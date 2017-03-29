/**
 * http://usejsdoc.org/
 */
$(document).ready(function() {
$.ajax({
			type: "GET",
			url : 'GetAccountDetails',			
			error:function(jqXHR, exception) {
				alert (exception);
			},
			success : function(responseText) {
				$('#ajaxGetUserServletResponse').html(responseText);
			}
		});
});