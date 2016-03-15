package performeter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import performeter.beans.Ratings;

public class RateSelfDAO {
	private Connection conn;
	
	public RateSelfDAO(Connection conn){
		this.conn = conn;
	}
	public void rateSelf(Ratings ratingBean)throws SQLException{
		
		String sql = "UPDATE ratings SET personalmgmtself = ? WHERE employeeid in ?";
		//String str=",teammgmtself = ?, leadershipabself = ?, commercialawself = ?, problemsovself = ?, timemgmtself = ?, commnself = ?, managingamgself = ?, computerskillsself = ?, customercareself = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, ratingBean.getPersonalmgmtself());
		/*stmt.setInt(2, ratingBean.getTeammgmtself());
		stmt.setInt(3, ratingBean.getLeadershipabself());stmt.setInt(4, ratingBean.getCommercialawself());
		stmt.setInt(5, ratingBean.getProblemsovself());stmt.setInt(6, ratingBean.getTimemgmtself());
		stmt.setInt(7, ratingBean.getCommnself());stmt.setInt(8, ratingBean.getManagingamgself());
		stmt.setInt(9, ratingBean.getComputerskillsself());stmt.setInt(10, ratingBean.getCustomercareself());*/
		stmt.setInt(2, ratingBean.getEmployeeId());
		stmt.executeUpdate(sql);
	}

}
