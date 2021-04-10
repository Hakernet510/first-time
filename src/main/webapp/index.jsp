<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP AJAX Form</title>
<meta name="author" content="Philip Staritt"/>
<meta name="description" content="How to make AJAX call using JSP & jQuery. Dynamic Web Project"/>
<meta name="keywords" content="AJAX, JSP, jQuery"/>

<link rel="stylesheet" href="css/basic.css" type="text/css" media="screen"/>
</head>
<body>
	<p class="large">How to make AJAX call using JSP & jQuery</p>
	<form id="updateUsername">
		<label for="username">What is your name?</label>
		<input type="text" id="username" name="username" />
		<input type="submit" />
	</form>
	<p id="displayName" />
	<hr />
	<p class="small">Tutorial Resource: http://www.philipstaritt.com</p> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>
	<script type="text/javascript">
	alert("abc")

	$(document).ready(function(){
		$('#updateUsername').submit(function(){
			alert($('#updateUsername').serialize())
			$.ajax({
				url: 'update',
				type: 'POST',
				dataType:'json',
				data: $('#updateUsername').serialize(),
				success: function(data){
					alert("data")
					console.log(data)
					if(data.isValid){
						$('#displayName').html('Your name is: ' + data.username);
					}
					else{
						alert('Please enter a valid username!!');
					}
				}
			});
			return false;
		});
	});
	</script>
</body>
</html>