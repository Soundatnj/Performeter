package performeter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import performeter.beans.EmployeeLogin;
import performeter.beans.Ratings;

public class RatingsDAO {
	
	private Connection conn;
	public RatingsDAO(Connection conn){
		this.conn = conn;
	}
	public Ratings findRatings(EmployeeLogin loginBean)throws Exception{
		Ratings ratingsBean = new Ratings();
		String sql = "Select * from ratings where employeeid=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, loginBean.getEmployeeId());
		ResultSet rs = stmt.executeQuery();
		rs.last();
		
		ratingsBean.setCommercialawself(rs.getInt("commercialawself"));ratingsBean.setManagingamgself(rs.getInt("managingamgself"));
		ratingsBean.setCommercialawsup(rs.getInt("commercialawsup"));ratingsBean.setManagingamgsup(rs.getInt("managingamgsup"));
		ratingsBean.setCommnself(rs.getInt("commnself"));ratingsBean.setPersonalmgmtself(rs.getInt("personalmgmtself"));
		ratingsBean.setCommnsup(rs.getInt("commnsup"));ratingsBean.setPersonalmgmtsup(rs.getInt("personalmgmtsup"));
		ratingsBean.setComputerskillsself(rs.getInt("computerskillsself"));ratingsBean.setProblemsovself(rs.getInt("problemsovself"));
		ratingsBean.setComputerskillssup(rs.getInt("computerskillssup"));ratingsBean.setProblemsovsup(rs.getInt("problemsovsup"));
		ratingsBean.setLeadershipabself(rs.getInt("leadershipabself"));ratingsBean.setTeammgmtself(rs.getInt("teammgmtself"));
		ratingsBean.setLeadershipabsup(rs.getInt("leadershipabsup"));ratingsBean.setTeammgmtsup(rs.getInt("teammgmtsup"));
		ratingsBean.setTimemgmtself(rs.getInt("timemgmtself"));ratingsBean.setRatingsId(rs.getInt("ratingid"));
		ratingsBean.setTimemgmtsup(rs.getInt("timemgmtsup"));ratingsBean.setCustomercareself(rs.getInt("customercareself"));
		ratingsBean.setCustomercaresup(rs.getInt("customercaresup"));
		return ratingsBean;
	}
	

}
