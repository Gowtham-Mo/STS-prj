<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
table{
		padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;
        
} 
label{  
    color: #08ffd1;  
    font-size: 17px;  
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
.name{  
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
</style>
</head>
<body>
<div>
	<ul>
		<li style="float:left"><a class="active" href="/home">Home</a></li>
	</ul>
</div>
	<div align="center">
		<h2>User Registration Form</h2>
		<h1>${msg}</h1>
		
	<form:form action="submitform" modelAttribute="user" enctype="multipart/form-data">
				<table>
				<tr>
					<td><label>User Name :</label><br>
					<form:input class="name" path="userName"/></td>
				</tr>
<tr>
					<td><label>Password :</label><br>
					<form:password id="Pass" path="userPassword"/></td>
				</tr>
				<tr>
					<td><label>User Age :</label><br>
					<form:input class="name" path="userAge"/></td>
				</tr>
				<tr>
					<td><label>Sex :</label><br>
					<form:radiobutton id="male" path="userSex" value="Male"/>
					<label for="male">Male</label>
					<form:radiobutton id="female" path="userSex" value="Female"/>
					<label for="female">Female</label>
					</td>
					</tr>
				<tr>
					<td><label>City :</label><br>
					<form:input class="name" path="userCity" /></td>
				</tr>
				<tr>
					<td><label>Stream :</label><br>
					<form:select path="userStream">
					<form:option value="cse"/>
					<form:option value="ece"/>
					<form:option value="eee"/>
					<form:option value="mech"/>
					</form:select>
				</tr>
				<tr>
					<td><label>Hobby :</label><br>
					<form:checkbox path="userHobby" value="Music listening" label="Music listening"/>
					<form:checkbox path="userHobby" value="Reading books" label="Reading books"/>
					</td>
				</tr>
				<tr>
					<td><label>Photo :</label><br>
					<input type="file" name="pic"></td>
				</tr>
				
				<tr>
					<td align="center"><input id="logi" type="submit" value="Register User"><br><br>
					<input id="logo" type="reset" value="Clear"></td>
				</tr>
			</table>
		</form:form>
		
		
	</div>
</body>
</html>