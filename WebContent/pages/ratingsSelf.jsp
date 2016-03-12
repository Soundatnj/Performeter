<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="performeter.beans.Ratings" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link href="/Performeter/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/Performeter/css/style.css">
</head>
<body>
	<%
		Ratings ratings = new Ratings();
		ratings = (Ratings)session.getAttribute("ratingsBean");
		int rt;
	%>
	<div class="container">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand"><a href="#">Employee performance</a></li>
            <li><a href="/Performeter/pages/employeeBiodata.jsp">Home</a></li>
            <li><a href="/Performeter/pages/ratingsSupervisor.jsp">See Your Ratings</a></li>
            <li><a href="Performance_goals_main.html">Performance Goals</a></li>
            <li><a href="Development_plans_main.html">Development Plans</a></li>
            <li><a href="Summary.html">Summary</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="#">Download Performance Review</a></li>
            <li>&nbsp;</li>
            <li id="logout"><a href="#">Logout</a>
        </ul>
    </div>
	</div>
	
	<div id="Page_Contents">
    	<ul class="nav nav-tabs">
    		<li><a href="/Performeter/pages/ratingsSupervisor.jsp">Supervisory Evaluation</a></li>
   			<li class="active"><a href="/Performeter/pages/ratingsSelf.jsp">Self Evaluation</a></li>
    	</ul>
    	
    	<div class="row">
		<h2>
			<u>Self Evaluation:-</u>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="/Performeter/pages/rateSelf.jsp"><button class="btn btn-inverse" type="button">Rate Yourself</button></a>
		</h2>
    	<br><br>
    	<h4>Personal Management:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<% rt=ratings.getPersonalmgmtself(); %>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
     	</table>

     	<h4>Team Management:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<% rt = ratings.getTeammgmtself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

    	<h4>Leadership Abilities:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getLeadershipabself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

   		<h4>Commercial Awareness:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getCommercialawself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

   		<h4>Problem Solving:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getProblemsovself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

   		<h4>Time Management:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getTimemgmtself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

   		<h4>Communication:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getCommnself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

   		<h4>Managing Ambiguity:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getManagingamgself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>

   		<h4>Computer Skills:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getComputerskillsself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>
   		
   		<h4>Customer Care:</h4>
        <table class="table table-bordered">
     		<thead>
     			<tr>
     				<th>Level</th>
     				<th>Exemplary</th>
     				<th>Accomplished</th>
     				<th>Developing</th>
     				<th>Beginning</th>
     				<th>No Demonstrated Achievement</th>
     			</tr>
     		</thead>
     		<tbody>
     			<tr>
     				<%rt = ratings.getCustomercareself();%>
     				<td>Rating:</td>
     				<td><%=rt==5?"&#10004;":""%></td>
     				<td><%=rt==4?"&#10004;":""%></td>
     				<td><%=rt==3?"&#10004;":""%></td>
     				<td><%=rt==2?"&#10004;":""%></td>
     				<td><%=rt==1?"&#10004;":""%></td>
				</tr>
     		</tbody>
   		</table>
    </div>
    	<div class="footer">
        	<ul class="pager col-lg-4">
        		<li><a href="/Performeter/pages/ratingsSupervisor.jsp">Previous</a></li>
        		<li class="next disabled"><a href="/Performeter/pages/ratingsSelf.jsp">Next</a></li>
        	</ul>
    	</div>
 </div>

	<script src="/Performeter/script/jquery.js"></script>
	<script src="/Performeter/script/bootstrap.min.js"></script>
	<script type="text/javascript" src="/Performeter/script/script.js"></script>
	</body>
</html>