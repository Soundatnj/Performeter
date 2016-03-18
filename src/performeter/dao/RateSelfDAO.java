package performeter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import performeter.beans.Ratings;

public class RateSelfDAO {
	private Connection conn;
	
	public RateSelfDAO(Connection conn){
		this.conn = conn;
	}
	public void rateSelf(Ratings ratingBean)throws SQLException{
		
		String sql = "UPDATE ratings SET personalmgmtself = ?,teammgmtself = ?, leadershipabself = ?, commercialawself = ?, problemsovself = ?, timemgmtself = ?, commnself = ?, managingamgself = ?, computerskillsself = ?, customercareself = ? WHERE employeeid = ?";
		//String str="";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, ratingBean.getPersonalmgmtself());
		stmt.setInt(2, ratingBean.getTeammgmtself());
		stmt.setInt(3, ratingBean.getLeadershipabself());stmt.setInt(4, ratingBean.getCommercialawself());
		stmt.setInt(5, ratingBean.getProblemsovself());stmt.setInt(6, ratingBean.getTimemgmtself());
		stmt.setInt(7, ratingBean.getCommnself());stmt.setInt(8, ratingBean.getManagingamgself());
		stmt.setInt(9, ratingBean.getComputerskillsself());stmt.setInt(10, ratingBean.getCustomercareself());
		stmt.setInt(11, ratingBean.getEmployeeId());
		stmt.executeUpdate();
		sql = "Select empovsuprt from Employee where empid=?";
		stmt = conn.prepareStatement(sql);
		stmt.setInt(1, ratingBean.getEmployeeId());
		ResultSet rs = stmt.executeQuery();
		double empovsuprt = 0.0;
		if(rs.next()){
			empovsuprt = rs.getDouble("empovsuprt");
		}
		rs.close();
		double empovselrt = (ratingBean.getPersonalmgmtself()+ratingBean.getTeammgmtself()+ratingBean.getLeadershipabself()+
							ratingBean.getCommercialawself()+ratingBean.getProblemsovself()+ratingBean.getTimemgmtself()+
							ratingBean.getCommnself()+ratingBean.getManagingamgself()+ratingBean.getComputerskillsself()+
							ratingBean.getCustomercareself())/10.0;
		double empavgrt = (empovselrt+empovsuprt)/2.0;
		sql = "UPDATE Employee SET empovselrt = ?, empavgrt = ? WHERE empid = ?";
		stmt = conn.prepareStatement(sql);
		stmt.setDouble(1, empovselrt);stmt.setDouble(2, empavgrt);stmt.setInt(3, ratingBean.getEmployeeId());
		stmt.executeUpdate();
	}

}
