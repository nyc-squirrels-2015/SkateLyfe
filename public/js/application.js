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



});
