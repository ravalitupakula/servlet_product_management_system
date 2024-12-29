<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is Table Page here</title>
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }

  h1 {
    text-align: center;
    margin-bottom: 20px;
  }

  table {
    border-collapse: collapse;
    margin: auto;
    width: 80%;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
  }

  th {
    background-color: blue;
    color: white;
  }

  tr:nth-child(even) {
    background-color: #f9f9f9;
  }

  .btn-container {
    text-align: center;
    margin-top: 20px;
  }

  button {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 0 10px;
  }

  button:hover {
    background-color: #3e8e41;
  }

  a {
    text-decoration: none;
    color: white;
  }
</style>

<body>
	<h1>View All Product Details</h1>
	<table  border="5"  cellspacing= "10" cellpadding = "10" style="border-collapse: collapse; margin :auto;">
		<tr style="background-color: blue; color: white;">
			<th>Id</th>
			<th>P_Name</th>
			<th>Price</th>
			<th>Ratings</th>
			<th>Quantity</th>
			<th colspan="2">Action</th>
		</tr>
	<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		while(rs.next())
		{
	%>
	
		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getString(4) %></td>
			<td><%= rs.getString(5) %></td>
			<td><a href = "delete?id=<%= rs.getInt(1)%>"><button style="background-color: red; color: white; border-radius: 5px; border: none;">Delete</button> </td></a> </td>
			<td><a href = "updatepage?id=<%= rs.getInt(1)%>"><button style="background-color: orange; color: white; border-radius: 5px; border: none;">Update</button> </td></a> </td>
		</tr>
	<%
		}
	%>	
	</table>
	
	<br><br>
	<div >
		<button><a href="home.jsp" style="text-decoration: none; color: white;"> Go To Home Page</a></button>
		<button> <a href="reg.jsp" style="text-decoration: none; color: white;">Go To Product Inserted Page</a> </button>
	</div>
</body>
</html>