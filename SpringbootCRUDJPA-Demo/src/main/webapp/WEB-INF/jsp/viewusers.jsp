<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  table{
		padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;
        border-color: white;
        
} 
label{  
    color: white;  
    font-size: 17px;  
} 
.id{
	color: yellow;  
    font-size: 17px;
}
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
} 
  body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#6abadeba;  
    font-family: 'Arial';  
} 
</style>
</head>
<body>
<div>
	<ul>
		<li><a href="getall">View All Users</a></li>
		<li><a href="getuserform">Get User</a></li>
		<li style="float:left"><a class="active" href="home">Home</a></li>
	</ul>
</div>
	<div align="center">
		<h2>${msg}</h2>
		<table border="1">
			<tr>
				<td><label class="id">ID</label></td>
				<td><label class="id">User Name</label></td>
				<td><label class="id">Age</label></td>
				<td><label class="id">City</label></td>
				<td><label class="id">Sex</label></td>
				<td><label class="id">Hobby</label></td>
				<td><label class="id">Stream</label></td>
				<td><label class="id">Photo</label></td>
				<td><label class="id">Edit</label></td>
				<td><label class="id">Delete</label></td>
			</tr>



			<c:forEach items="${users}" var="u">
				<tr>
					<td><label>${u.id}</label></td>
					<td><label>${u.userName}</label></td>
					<td><label>${u.userAge}</label></td>
					<td><label>${u.userCity}</label></td>
					<td><label>${u.userSex}</label></td>
					<td><label>${u.userHobby}</label></td>
					<td><label>${u.userStream}</label></td>
					<td><img alt="No Photo" width="100 height=300" src="data:image/jpg;base64,${u.userPicture}"></img></td>
					<td><label><a href="updateuser/${u.id}">Edit</a></label></td>
					<td><label><a href="deleteuser/${u.id}">Delete</a></label></td>
				</tr>
			</c:forEach>



		</table>
		
	</div>
</body>
</html>