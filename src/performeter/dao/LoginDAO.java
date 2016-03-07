package performeter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import performeter.beans.Employee;
import performeter.beans.EmployeeLogin;
public class LoginDAO {
	
	private Connection conn;
	
	public LoginDAO(Connection conn){
		this.conn = conn;
	}
	public boolean checkCredentials(EmployeeLogin loginObj) throws SQLException{
		
		String sql = "Select count(*) as count from Employee where empid=? and emppw=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, loginObj.getEmployeeId());
		stmt.setString(2, loginObj.getEmployeePassword());
		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if(rs.next()){
			count = rs.getInt("count");
		}
		rs.close();
		if(count==0)
			return false;
		else
			return true;
	}
	public Employee findEmployeeDetails(EmployeeLogin loginBean) throws SQLException{
		String sql = "Select * from Employee where empid=? and emppw=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, loginBean.getEmployeeId());
		stmt.setString(2, loginBean.getEmployeePassword());
		ResultSet rs = stmt.executeQuery();
		rs.last();
		
		Employee employeeBean = new Employee();
		employeeBean.setEmpId(rs.getInt("empid"));
		employeeBean.setEmpName(rs.getString("empname"));
		employeeBean.setEmpPhNo(rs.getString("empphno"));
		employeeBean.setEmpDOB(rs.getDate("empdob"));
		employeeBean.setEmpAdd(rs.getString("empadd"));
		employeeBean.setEmpQual(rs.getString("empqual"));
		employeeBean.setEmpObj(rs.getString("empobj"));
		employeeBean.setEmpPlace(rs.getString("empplace"));
		employeeBean.setEmpReview(rs.getString("empreview"));
		employeeBean.setEmpObSupRt(rs.getDouble("empovsuprt"));
		employeeBean.setEmpOvSelRt(rs.getDouble("empovselrt"));
		employeeBean.setEmpAvRt(rs.getDouble("empavgrt"));
		return employeeBean;
	}

}
