alert("abc")

$(document).ready(function(){
	$('#updateUsername').submit(function(){
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