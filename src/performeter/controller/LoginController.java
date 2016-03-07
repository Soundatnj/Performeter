package performeter.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import performeter.beans.Employee;
import performeter.beans.EmployeeLogin;
import performeter.dao.LoginDAO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		try {
			InitialContext initContext = new InitialContext();
			Context env = (Context)initContext.lookup("java:comp/env");
			ds =(DataSource)env.lookup("jdbc/performeter");
			
    	} catch (NamingException e) {
			throw new ServletException();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action==null)
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		int employeeIdNo=0;
		
		if(action==null)
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		else if(action.equals("dologin")){
			
			Connection conn = null;
			try {
				conn = ds.getConnection();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new ServletException();
			}
			String employeeId = request.getParameter("employeeId");
			if(employeeId==null||employeeId==""){
				employeeIdNo=0;
			}
			else if(!employeeId.matches("[0-9]+")){
				employeeIdNo=-999;
			}
			else{
				employeeIdNo = Integer.parseInt(employeeId);
			}
			String employeePassword = request.getParameter("employeePassword");
			request.setAttribute("employeeId", employeeId);
			request.setAttribute("employeePassword", employeePassword);
			
			EmployeeLogin loginObj = new EmployeeLogin(employeeIdNo, employeePassword);
			session.setAttribute("loginbean", loginObj);
			
			LoginDAO loginDAOObj = new LoginDAO(conn);
			try {
				if(!loginObj.validate())
					{
						request.setAttribute("validationMessage", loginObj.getMessage());
						request.getRequestDispatcher("/index.jsp").forward(request, response);
					}		
					else{
						boolean checkCredentials = loginDAOObj.checkCredentials(loginObj);
						if(checkCredentials){
							Employee employeeBean = new Employee();
							employeeBean = loginDAOObj.findEmployeeDetails(loginObj);
							session.setAttribute("employeeBean", employeeBean);
							request.getRequestDispatcher("/pages/employeeBiodata.jsp").forward(request, response);
						}
							
						else{
							request.setAttribute("validationMessage", "Invalid Credentials");
							request.getRequestDispatcher("/index.jsp").forward(request, response);
						}	
					}
				} catch (SQLException e) {
				request.getRequestDispatcher("/pages/error.jsp").forward(request, response);
				e.printStackTrace();
			}	
		}
	}

}
