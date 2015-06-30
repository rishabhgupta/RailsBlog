// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

// Function to validation of email using Regex
function validateEmail(email) {
  var emailReg = /^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
  return emailReg.test(email);
}

// Function to set jQuery Bootstrap TextField Error
function set_error(id,msg)
{
	$(id+" span").remove();
	if(!$(id).hasClass("has-error"))
	{
		if($(id).hasClass("has-success"))
		{
				$(id).removeClass("has-success");
		}
		$(id).addClass("has-error");
	}
	
	var glyphicon = '<span id="error-icon" class="glyphicon glyphicon-remove form-control-feedback"></span>';
	var help = 	'<span id="error-msg" class="help-block">'+msg+'</span>';
	if($(id+" #error-icon").length == 0)
	{
			$(id).append(glyphicon);

	}
	if($(id+" #error-msg").length == 0)
	{
		
			$(id).append(help);

	}
	
}
// Function to set jQuery Bootstrap TextField Error
function set_ok(id,msg)
{
	$(id+" span").remove();
	if(!$(id).hasClass("has-success"))
	{
		if($(id).hasClass("has-error"))
		{
				$(id).removeClass("has-error");
		}
		$(id).addClass("has-success");
	}
	var glyphicon = '<span id="success-icon" class="glyphicon glyphicon-ok form-control-feedback"></span>';
	var help = 	'<span id="success-msg" class="help-block">'+msg+'</span>';
	if($(id+" #success-icon").length == 0)
	{
			$(id).append(glyphicon);

	}
	if($(id+" #success-msg").length == 0)
	{
		
			$(id).append(help);

	}
}

$('document').ready(function() {
	
	$('#user_email').blur(function()
	{
		var email = $('#user_email').val();
	  if(!validateEmail(email))
	  {
	  	set_error("#email","Please enter a valid email address.")
	  	/*
	  	$("#email").addClass("has-error has-feedback");
	  	var glyphicon = '<span id="email-error-icon" class="glyphicon glyphicon-remove form-control-feedback"></span>';
	  	var help = 	'<span id="email-error-msg" class="help-block">Please enter a valid email address.</span>';
	  	$('#email').append(glyphicon);
	  	if($("#email-error-msg").length == 0)
	  	{
  				//it doesn't exist
  				$("#email").append(help);

			}*/
	  	
	  }
	  else
	  {
	  	set_success("#email"," ")
	  }
	});

});