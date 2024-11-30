<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <form name="f1" action="/LoginApp/LoginServlet" method="post" onSubmit="return validate()">
   username: <input type="text" name="username" /><br>
   password: <input type="password" name="password" /><br>
   <input type="submit" value="Login" /><br>
 </form>
 New User <a href="Register.jsp">Register</a>
 
 <script>
    function validate() {
        var v1 = document.f1.username.value;
        if(v1 == null || v1 == ""){
            alert("Username should not be empty");
            return false;
        }
        var v2 = document.f1.password.value;
        if(v2 == null || v2 == ""){
           	alert("Password should not be empty");
           	return false;
        }
        return true;
    }
 </script>

</body>
</html>