<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="performeter.beans.Employee" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Ratings</title>
	<link href="/Performeter/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/Performeter/css/style.css">
</head>
<body>

	<%
		Employee employee = new Employee(); 
		employee = (Employee)session.getAttribute("employeeBean");
	%>
	
	<div class="container">
	<!-- Sidebar -->
    	<div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand"><a href="#"><b>Employee performance</b></a></li>
            <li><a href="/Performeter/pages/employeeBiodata.jsp">Home</a></li>
            <li><a href="/Performeter/pages/ratingsSupervisor.jsp">See Your Ratings</a></li>
            <li><a href="Performance_goals_main.html">Performance Goals</a></li>
            <li><a href="Development_plans_main.html">Development Plans</a></li>
            <li><a href="Summary.html">Summary</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li>&nbsp;</li>
            <li><a href="#">Download Performance Review</a><li>&nbsp;</li>
            <li id="logout"><a href="#">Logout</a></li>
        </ul>
    	</div>
	</div>
	<div id="Page_Contents">
    	<div class="row">
    		<img src="/Performeter/images/pro.jpg" style="float: right" class="img-polaroid"/>
    	</div>
    
    	<ul class="nav nav-tabs">
  			<li><a href="/Performeter/pages/employeeBiodata.jsp"><b>Biodata</b></a></li>
  			<li><a href="Performance_history.html"><b>Performance History</b></a></li>
  			<li class="active"><a href="/Performeter/pages/employeeRatingsOverall.jsp"><b>Ratings</b></a></li>
		</ul>
		
		<div class="well well-small" >
			<b>Supervisor Review:</b>&nbsp;<%=employee.getEmpReview()%>
		</div>
		
		<div class="well well-large">
			<table class="table table-striped">
				<tr>
					<td>Overall Supervisor Rating</td>
					<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</td>
					<td><%=employee.getEmpObSupRt()%></td>
				</tr>
				<tr>
					<td>Overall Self Rating</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=employee.getEmpOvSelRt()%></td>
				</tr>
				<tr>
					<td>Overall Average Rating</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=employee.getEmpAvRt()%></td>
				</tr>
			</table>
		</div>
			
	</div>
	
	<script src="/Performeter/script/jquery.js"></script>
	<script src="/Performeter/script/bootstrap.min.js"></script>
	<script type="text/javascript" src="/Performeter/script/script.js"></script>
</body>
</html>