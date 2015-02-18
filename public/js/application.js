$(document).ready(function() {
 	
 	$(".login_btn").on("click", function(event){
 			event.preventDefault();
 			console.log("YOU CLICKED");
 			$(".login_form").toggle();
 	});

 	$(".signup_btn").on("click", function(event){
 			event.preventDefault();
 			console.log("YOU CLICKED");
 			$(".signup_form").toggle(); 			
 	});

 	$(".login_ajax").on("submit", function(event){
		event.preventDefault();
		var $form = $(event.target)

		$.ajax({
			url:  $form.attr('action'),
			type: $form.attr('method'),
			data: $form.serialize(),
			success: function(response){
				$(".auth_btns").remove();
				$("#content").prepend(response);
				console.log(response);
			},
			error: function(){

			} 
		});
	});


});
