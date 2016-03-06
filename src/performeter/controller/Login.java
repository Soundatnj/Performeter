package performeter.controller;

import java.io.IOException;

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

import performeter.beans.EmployeeLogin;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DataSource ds;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config)throws ServletException{
    	
    	try {
			InitialContext initContext = new InitialContext();
			Context env = (Context)initContext.lookup("java:comp/env");
			ds =(DataSource)env.lookup("jdbc/performeter");
    	} catch (NamingException e) {
			// TODO Auto-generated catch block
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
		if(action==null)
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		else if(action.equals("dologin")){
			
			String employeeId = request.getParameter("employeeId");
			String employeePassword = request.getParameter("employeePassword");
			
			request.setAttribute("employeeId", employeeId);
			request.setAttribute("employeePassword", employeePassword);
			
			EmployeeLogin loginobj = new EmployeeLogin(employeeId, employeePassword);
			session.setAttribute("loginbean", loginobj);
			
			if(loginobj.validate())
				request.getRequestDispatcher("/pages/employeeBiodata.jsp").forward(request, response);
			else{
				request.setAttribute("validationMessage", loginobj.getMessage());
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
				
		}
		
	}

}
