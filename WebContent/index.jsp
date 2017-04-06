<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
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
  <script src="js/ajax-call.js"></script>
  <script src="js/saveaccount.js"></script>

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
    text-align: left !important;
    }
  </style>
  

  
  
  
  
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
      <a class="navbar-brand" href="index.jsp">Security, Inc</a>
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
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Hi Admin</a></li>
         <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>Sign Out</a></li>
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
      <p><a href="#">Services</a></p>
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
     <span >Sub Accounts</h3>
     <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"> Add Account</span></button>
      </div>
      
      
 <%--      <div class="well">
      <ul class="list-group">
  <li class="list-group-item"><a href="useraccount.jsp?account_name=${account.account_name}" ><c:out value="${account.account_name}" /></a> <span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
  <li class="list-group-item">Rajesh <span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
  <li class="list-group-item">Jeeva Murugan <span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
  <li class="list-group-item">Vijay<span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
  <li class="list-group-item">Ashok<span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
</ul>
    </div> --%>
    
    <div class="well">
    <div class='input-group col-lg-6 col-md-6'>
				<input  type='text' id='Inputsearch' name='search' class='form-control input-md' placeholder='Search' />
				<span class='input-group-btn'>
				<button class='btn btn-info btn-md' id='SearchButton' type='button'><i class='glyphicon glyphicon-search'></i></button>
				</span>
				</div>
    <div id="ajaxGetUserServletResponse"></div>
    
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










<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog"> 
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Account</h4>
        </div>
        <div class="modal-body">
          <form  action="AddAccount" id="addaccount" name="addaccount" method="post" class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email Id</label>
    <div class="col-sm-10"> 
      <input type="email" class="form-control" name="email" id="email" placeholder="Enter password">
    </div>
  </div>
<div class="form-group">
    <label class="control-label col-sm-2" for="contactnumber">Alias Name</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" name="contactnumber" id="contactnumber" placeholder="Enter password">
    </div>
  </div>
  <!-- test<div class="form-group">
    <label class="control-label col-sm-2" for="address">First Address</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="address" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="state">State</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="state" placeholder="Enter password">
    </div>
  </div> -->
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
     <!--  <button type="submit" onclick="return submitForm();" class="btn btn-default">Submit</button> -->
       <input type="button" id="ibutton" value="save" class="btn btn-default">
    </div>
  </div>
</form>
        </div>
        <div class="modal-footer">
          <button type="button" id="buttonID" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

<script src="js/utilityfunction.js"></script> 

<script type="text/javascript">
$('#ibutton').click(function(e) {
    //e.preventDefault();
    // Coding
    $('#myModal').modal('toggle'); //or 
    //$('#myModal').modal('hide');
      return false;
});
  
</script>

<!-- <footer class="container-fluid text-center">
  <p>DDoS Security@2017</p>
</footer> -->
 
</body>
</html>
