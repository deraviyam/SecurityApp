 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html lang="en">
<head>
  <title>Neustar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    
    body{
   margin: auto;
    background-color: #fff;
    }
    
    
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {
      height:auto !important;
       background-color: #fff;
      } 
   
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
     
    .well {
    padding:5px !important;
    
    }
    
    .text-left {
     padding-top: 20px;
      height: 100%;
    background-color: #f1f1f1;
    
    }
    .text-center{
    text-align: center; !important;
    }
    
    .table>td{
    padding-left:2px;
    padding-right:2px;
    }
  </style>
  
  <script>
  $(document).ready(function() {
  $('a[href="#dnsaction"]').click(function(){
	    $("#dnsdiv").show();
	});  
  });
  
  
  </script>

<script>  
  $(document).ready(function() {
  
        $("#dnsdiv").hide();
   
});
</script>
  
  
</head>
<body>

<nav class="navbar ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">Logo</a>
    </div>   
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Administration <b class="caret"></b></a>
                        <ul class="dropdown-menu" onchange="location = this.options[this.selectedIndex].value;">
                            <li><a href="DDos.html">DDoS Mitigation</a></li>
                        </ul>
                    </li>
        
      </ul>
 <!--   <div>   
   <select onchange="location = this.options[this.selectedIndex].value;">
    <option value="index.html">Administration</option>
    <option value="DDos.html">DDoS Mitigation</option>
</select>
</div> -->​
 <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Hi Admin</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content"> 
    <div class="col-sm-2 sidenav">
  <div class="well">
    <h2> <span class="label label-default">Dashboard</span></h2>
   <h4> <span class="label label-default">Account settings</span></h4>
    <div class="well">
      <p><a href="#">Profile</a></p>
      <p><a href="#">Users</a></p>
      <p><a href="#dnsaction">Services</a></p>
      <p><a href="#">Custom Roles</a></p>
    </div>
   <h4> <span class="label label-default">Theme Configuration</span></h4>
    <div class="well">
      <p><a href="#">UI Customization</a></p>
      <p><a href="#">Email Template</a></p>
    </div>
    </div>  
    
    </div>
    
    <div class="col-sm-10 text-left"> 

      <div class="well">
<p><%= request.getParameter("account_name") %></p>
     </div>
     <div id="dnsdiv">
     <form action="updateddos" method="post">    
     <div class="container">
	<div class="row">
	   <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">  			
         <label for="ddos">DDos</label>
            <div>
                <select id="ddoschange" class="form-control">
                    <option>Not Assigned</option>
                    <option>Assign</option>
                </select>
            </div>
            
        </div>
        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
            <label for="accountname"></label>
  			<input type="hidden" class="form-control" id="accountname" name="accountname" value="<%= request.getParameter("account_name") %>">
  			</div>
        </div>
        </div>
        </form>
    </div>
      </div>
    </div>
</div>


<div class="modal fade" id="successModal" role="dialog">
    <div class="modal-dialog"> 
      <!-- Modal content-->
      <div class="modal-content">
       <!--  <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Data Saved Successfully</h4>
        </div> -->
        <div class="modal-body">
        <div id="message"></div>
        </div>
        <div class="modal-footer">
          <button type="button" id="buttonID" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


<script src="js/ddosaccounts.js"></script>

<!-- <footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer> -->

</body>
</html>
