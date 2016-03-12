<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="performeter.beans.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <title>Performeter</title>
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
            <li><a href="Biodata.html">Home</a></li>
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
  			<li class="active"><a href="/Performeter/pages/employeeBiodata.jsp"><b>Biodata</b></a></li>
  			<li><a href="Performance_history.html"><b>Performance History</b></a></li>
  			<li><a href="/Performeter/pages/employeeRatingsOverall.jsp"><b>Ratings</b></a></li>
		</ul>
		
		<div class="well well-small" >
			<b>ID:</b>&nbsp;<%=employee.getEmpId()%>
		</div>

   		<div class="well well-small" >
			<b>Name:</b>&nbsp;<%=employee.getEmpName()%>
		</div>
		
		<div class="well well-small">
			<b>Phone No:</b>&nbsp;<%=employee.getEmpPhNo()%>
		</div>
		
		<div class="well well-small">
			<b>Date of Birth:</b>&nbsp;<%=employee.getEmpDOB()%>
		</div>
		
		<div class="well well-small">
			<b>Address:</b>&nbsp;<%=employee.getEmpAdd()%>
		</div>
		
		<div class="well well-small" >
			<b>Qualification:</b>&nbsp;<%=employee.getEmpQual()%>
		</div>
   
   		<div class="well well-small" >
			<b>Objective:</b>&nbsp;<%=employee.getEmpObj()%>
		</div>
	</div>
	
	<script src="/Performeter/script/jquery.js"></script>
	<script src="/Performeter/script/bootstrap.min.js"></script>
	<script type="text/javascript" src="/Performeter/script/script.js"></script>
	</body>
</html>