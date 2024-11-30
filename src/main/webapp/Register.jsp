<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Registration Page</h3>
<form name="f2" action="/LoginApp/RegisterServlet" method="post" onSubmit="return validate()" >

   Name: <input type="text" name="name" /><br>
   Username: <input type="text" name="username" /><br>
   Password: <input type="password" name="password" /><br>
   Retype password: <input type="password" name="repassword" /> <br>
   <input type="submit" value="Register" /><br>  
</form>

<script>
function validate() {
    var v1 = document.f2.name.value;
    var v2 = document.f2.username.value;
    var v3 = document.f2.password.value;
    var v4 = document.f2.repassword.value;
    
       if(v1 == null || v1 == ""){
  			alert("Name should not be empty");
  			return false;
       }
       if(v2 == null || v2 == ""){
 			alert("Username should not be empty");
 			return false;
      }
       if(v3 == null || v3 == ""){
 			alert("Password should not be empty");
 			return false;
      }
       if(v3 != v4){
 			alert("Password mismatch");
 			return false;
      }
}
</script>

</body>
</html>