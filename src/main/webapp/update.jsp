<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page here</title>
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }

  h1 {
    text-align: center;
    color: red;
    margin-bottom: 20px;
  }

  form {
    width: 20%;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  
  input[type="text"] {
    width: 50%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
  }

  button[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  button[type="submit"]:hover {
    background-color: #3e8e41;
  }

  .btn-container {
    text-align: center;
    margin-top: 20px;
  }

  .btn-container button {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 0 10px;
  }

  .btn-container button:hover {
    background-color: #3e8e41;
  }

  a {
    text-decoration: none;
    color: white;
  }
</style>

<body>
	<h1 style="text-align: center; color: red;">Welcome To Update Page</h1>
	<%
		ResultSet rs = (ResultSet)request.getAttribute("rs");
	%>
	<form action="update">
		Id : <input type="text" name="id" readonly="readonly" value="<%= rs.getInt(1)%>"> <br><br>
		Product_Name : <input type="text" name="p_name" value="<%= rs.getString(2)%>"> <br><br>
		Price : <input type="text" name="price" value="<%= rs.getString(3)%>"> <br><br>
		Ratings : <input type="text" name="ratings" value="<%= rs.getString(4)%>"> <br><br>
		Quantity : <input type="text" name="qnty" value="<%= rs.getString(5)%>"> <br><br>
		<button type="submit">SUBMIT</button>
	</form>
	<br>
	<br><br>
		<div class="btn-container">
			<button><a href="home.jsp" style="text-decoration: none; color: white;"> Go To Home Page</a></button>
			<button> <a href="reg.jsp" style="text-decoration: none; color: white;">Go To Product Inserted Page</a> </button>
		</div>
</body>
</html>