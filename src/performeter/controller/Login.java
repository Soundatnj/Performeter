package performeter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import performeter.beans.EmployeeLogin;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
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
