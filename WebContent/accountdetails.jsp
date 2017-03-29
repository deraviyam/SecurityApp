 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Account Details</title>
<style>

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
 <%-- <div class="well">
<p> Welcome <%= request.getParameter("account_name") %></p>
     </div> --%>
	<div class="well">
     <h3 align="left">Domain Configuration</h3>
     <!-- <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"> Add Account</span></button> -->
     </div>   
     
     <form>
   <div class="form-group">
    <label for="exampleInputEmail1">Domain</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter domain name">
  </div>
  <div class="form-group col-lg-6 col-md-6">
    <label for="exampleInputEmail1">Host</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter host name">
  </div>
  <div class="form-group col-lg-6 col-md-6">
    <label for="exampleInputPassword1">Destination</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Destination Server IP">
  </div>
  <div>
  <button type="submit" class="btn btn-default" id="submit">Submit</button>
 
  </div>
</form>
<div class="modal fade" id="successModal" role="dialog">
    <div class="modal-dialog"> 
      <!-- Modal content-->
      <div class="modal-content">
       <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Configuration has been submitted successfully</h4>
        </div>
        <!-- <div class="modal-body">
        <div id="message"></div>
        </div>
        <div class="modal-footer">
          <button type="button" id="buttonID" class="btn btn-default" data-dismiss="modal">Close</button>
        </div> -->
      </div>
 
<script src="js/utilityfunction.js"></script> 

<script type="text/javascript">
$('#submit').click(function(e) {
    //e.preventDefault();
    // Coding
    $('#successModal').modal('toggle'); //or 
    //$('#myModal').modal('hide');
      return false;
});
  
</script>
</body>
</html>