<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

ul {
  list-style-type: none;
  margin: 10;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: right;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  border-radius: 15px;
}

li a:hover {
  background-color: #111;
  
}
li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
  }
  
  body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#6abadeba;  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;  
          
}
table{
		padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;
        
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
} 
h1{  
    text-align: center;  
    color: red;  
    padding: 20px;  
}   
label{  
    color: #08ffd1;  
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#logi{  
    width: 150px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: white; 
    background-color: green; 
  
  
} 
#logo{  
    width: 150px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: white; 
    background-color: red; 
  
  
}     
</style>
</head>
<body>
		<div>
			<ul>
					<li><a href="registeration">New User? Register Here</a></li>
					<!--  <li><a href="getall">View All Users</a></li>
					<li><a href="getuserform">Get User</a></li> -->
					<li style="float:left"><a class="active" href="/home">Home</a></li>
			</ul>
		</div>
	<div align="center">
		<h2>Login Form</h2>
		<h1>${msg}</h1>
	<form:form action="validate" modelAttribute="user">
	<div>
				<table>
				
				<tr>
					<td><label>User Name :</label><br>
					<form:input id="Uname" path="userName"/></td>
				</tr>
				<tr></tr>
				<tr>
					<td><label>Password :</label><br>
					<form:password id="Pass" path="userPassword"/><br><br></td>
				</tr>
				<tr>
				</tr>
				<tr>
					<td align="center"><input id="logi" type="submit" value="Login"><br><br>
					<input id="logo" type="reset" value="Clear"></td>
				</tr>
			</table>
			</div>
		</form:form>
		
		
	</div>
</body>
</html>