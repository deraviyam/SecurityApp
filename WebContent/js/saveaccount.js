/**
 * http://usejsdoc.org/
 */
    $(document).ready(function() {
     $('#ibutton').click(function(e) {
     e.preventDefault();
     var name = $("#name").val();
     var email = $("#email").val();
     var contactnumber = $("#contactnumber").val();
     
     var value ={name:name,email:email,contactnumber:contactnumber};
 
     $.ajax({
     url: "AccountController",
     type: "POST",
     data: value,
     cache: false,
     error:function(jqXHR, exception) {
			alert (exception);
	},
     success: function(htmlRespone) {
     $("#message").html(htmlRespone);
     $("#successModal").modal('show');;
     }
     });
});
});
