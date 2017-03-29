/**
 * http://usejsdoc.org/
 */
    $(document).ready(function() {
     $('#signIn').click(function(e) {
     e.preventDefault();
     var username = $("#inputEmail").val();
     var password = $("#inputPassword").val();
     //var contactnumber = $("#contactnumber").val();
     
     var value ={uname:username,pwd:password};
 
     $.ajax({
     url: "LoginController",
     type: "GET",
     data: value,
     cache: false,
     error:function(jqXHR, exception) {
			alert (exception);
	},
     success: function(htmlresponse) {
    	 
    	 if(htmlresponse=='success'){
    		 //alert ("success");
    		 window.location.href = "index.jsp";
    	 }else{
    		 window.location.href = "login.jsp";
    	 }
     }
     });
});
});