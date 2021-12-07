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
  #log{  
    width: 150px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
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
		<li style="float:left"><a class="active" href="/home">Home</a></li>
	</ul>
</div>
<div></div>
<div align="center">
	<h3>${msg}</h3>
	<form action="getbyup" method="post">
		<label>User ID :</label><br> <input type="text" name="id"><br><br><br>
		<input id="log" type="submit" value="Get User">
	</form>
</div>

</body>
</html>