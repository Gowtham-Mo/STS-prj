<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
</style>
</head>
<body>
<div>
	<ul>
		<li style="float:left"><a class="active" href="home">Home</a></li>
	</ul>
</div>

	<div align="center">
	<h3>User ID : ${user.id}</h3>
	<h3>User Name : ${user.userName}</h3>
	<h3>User Age : ${user.userAge}</h3>
	<h3>User City : ${user.userCity}</h3>
	<h3>User Photo : <img width="300 height=300" src="data:image/jpg;base64,${user.userPicture}"></img></h3>
	
	</div>
</body>
</html>