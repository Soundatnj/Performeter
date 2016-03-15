<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link href="/Performeter/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/Performeter/css/style.css">
</head>
<body>
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
    		<li ><a href="/Performeter/pages/ratingsSupervisor.jsp">Supervisory Evaluation</a></li>
   			 <li class="active"><a href="/Performeter/pages/ratingsSelf.jsp">Self Evaluation</a></li>
    	</ul>
		<div class="row">
			<h2><u>Self Evaluation:-</u></h2>
    		<br><br>
    		<form action="/Performeter/RateSelfController" method="post">
    		<input type="hidden" name="action" value="doRateSelf"/>
    		<table class="table table-bordered">
     			<thead>
     				<tr>
     					<th></th>
     					<th>Exemplary</th>
     					<th>Accomplished</th>
     					<th>Developing</th>
     					<th>Beginning</th>
     					<th>No Demonstrated Achievement</th>
     				</tr>
     			</thead>
     			<tbody>
     				<tr>
     					<td>Personal Management</td>
     					<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios1" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
     					<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios1" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
     					<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios1" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
     					<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios1" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
     					<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios1" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Team Management</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios2" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                       	 	<label class="radio">
                        		<input type="radio" name="optionsRadios2" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios2" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios2" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios2" id="optionsRadios5" value="1" >
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Leadership Abilities</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios3" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios3" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios3" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios3" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios3" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Commercial Awareness</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios4" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios4" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios4" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios4" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios4" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Problem Solving</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios5" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios5" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios5" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios5" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios5" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Time Management</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios6" id="optionsRadios1" value="5" >
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios6" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios6" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios6" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios6" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Communication</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios7" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios7" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios7" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios7" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                       			 <input type="radio" name="optionsRadios7" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Managing Amguity</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios8" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios8" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios8" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios8" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios8" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Computer Skills</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios9" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios9" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios9" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios9" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios9" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td>Customer Care</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios10" id="optionsRadios1" value="5">
                        	</label>
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios10" id="optionsRadios2" value="4">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios10" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios10" id="optionsRadios4" value="2">
                        	</label>           
                    	</td>
                    	<td>
                        	<label class="radio">
                        		<input type="radio" name="optionsRadios10" id="optionsRadios5" value="1">
                        	</label>           
                    	</td>
                	</tr>
     			</tbody>
     		</table>
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		
     		<input class="btn btn-primary" type="submit" value="Submit">
     		
     		</form>
    	</div>
    </div>
	
</body>
</html>