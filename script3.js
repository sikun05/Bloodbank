  function clickedButton()
  {

	  window.location = 'donorRegistration.jsp'

  }	
  
  
  var check = function() {
    if (document.getElementById('password').value ==
      document.getElementById('confirm_password').value) {
      document.getElementById('message').style.color = 'green';
      document.getElementById('message').style.fontSize = '12px';
      document.getElementById('message').innerHTML = 'Password matched successfully.';
    } else {
      document.getElementById('message').style.color = 'red';
      document.getElementById('message').style.fontSize = '12px';
      document.getElementById('message').innerHTML = 'Password does not matched.';
    }
  }
