package performeter.controller;

import java.io.IOException;
import java.sql.Connection;

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
import performeter.beans.Ratings;
import performeter.dao.LoginDAO;
import performeter.dao.RateSelfDAO;
import performeter.dao.RatingsDAO;

/**
 * Servlet implementation class RateSelfController
 */
@WebServlet("/RateSelfController")
public class RateSelfController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RateSelfController() {
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		if(action==null)
			request.getRequestDispatcher("/rateSelf.jsp").forward(request, response);
		else if(action.equals("doRateSelf")){
			try{
				Connection conn = null;
				conn = ds.getConnection();
				int persMgmtSelf = Integer.parseInt(request.getParameter("optionsRadios1"));
				int teamMgmtSelf = Integer.parseInt(request.getParameter("optionsRadios2"));
				int leadAbilSelf = Integer.parseInt(request.getParameter("optionsRadios3"));
				int commAwareSelf = Integer.parseInt(request.getParameter("optionsRadios4"));
				int probSolvSelf = Integer.parseInt(request.getParameter("optionsRadios5"));
				int timeMgmtSelf = Integer.parseInt(request.getParameter("optionsRadios6"));
				int commnSelf = Integer.parseInt(request.getParameter("optionsRadios7"));
				int managAmbSelf = Integer.parseInt(request.getParameter("optionsRadios8"));
				int compuSkillSelf = Integer.parseInt(request.getParameter("optionsRadios9"));
				int custCareSelf = Integer.parseInt(request.getParameter("optionsRadios10"));
				Employee employee = (Employee)session.getAttribute("employeeBean");
				int employeeId = employee.getEmpId();
				Ratings ratingBean = new Ratings();
				ratingBean.setPersonalmgmtself(persMgmtSelf);ratingBean.setTeammgmtself(teamMgmtSelf);ratingBean.setLeadershipabself(leadAbilSelf);
				ratingBean.setCommercialawself(commAwareSelf);ratingBean.setProblemsovself(probSolvSelf);ratingBean.setTimemgmtself(timeMgmtSelf);
				ratingBean.setCommnself(commnSelf);ratingBean.setManagingamgself(managAmbSelf);ratingBean.setComputerskillsself(compuSkillSelf);
				ratingBean.setCustomercareself(custCareSelf);ratingBean.setEmployeeId(employeeId);
				RateSelfDAO obj = new RateSelfDAO(conn);
				obj.rateSelf(ratingBean);
				EmployeeLogin loginObj = (EmployeeLogin)session.getAttribute("loginbean");
				LoginDAO loginDAOObj = new LoginDAO(conn);
				Employee employeeBean = new Employee();
				employeeBean = loginDAOObj.findEmployeeDetails(loginObj);
				session.setAttribute("employeeBean", employeeBean);
				RatingsDAO ratingsDAOObj = new RatingsDAO(conn);
				Ratings ratingsBean = new Ratings();
				ratingsBean = ratingsDAOObj.findRatings(loginObj);
				session.setAttribute("ratingsBean", ratingsBean);
				request.getRequestDispatcher("/pages/ratingsSelf.jsp").forward(request,response);
			}
			catch(Exception ex){
				request.getRequestDispatcher("/pages/error.jsp").forward(request, response);
				ex.printStackTrace();
			}
			
			
		}
	}

}
