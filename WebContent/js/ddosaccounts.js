/**
 * http://usejsdoc.org/
 */
$(document).ready(function() {

$.ajax({
			type: "GET",
			url : 'DDosAccounts',			
			error:function(jqXHR, exception) {
				alert (exception);
			},
			success : function(responseText) {
				$('#DDosResponse').html(responseText);
			}
		});


$("#ddoschange").change(function() {
	
	var username = $("#accountname").val();
	
    $.ajax({
     url: "DDosAccounts",
     type: "POST",
     data:{
    	 accountname:username
     },
     error:function (jqXHR, exception) {
			alert (exception);
     },
     success: function(msg){
       $("#message").html(msg);
       $("#successModal").modal('show');;
     }
   });
  });



});