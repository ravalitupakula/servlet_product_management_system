<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserted Page here</title>
</head>
	<style>
  body {
    font-family: Arial, sans-serif;
    background-color: yellow;
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
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  
  input[type="text"] {
    width: 52%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
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

  .center-btn {
    text-align: center;
    margin-top: 20px;
  }

  .center-btn button {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  .center-btn button:hover {
    background-color: #3e8e41;
  }
</style>
	
<body>
	<h1 style="text-align: center; color: red;">Welcome To Product Inserted Page</h1>
	<form action="reg">
		Id : <input type="text" name="id" placeholder="Enter Product Id"> <br><br>
		Product_Name : <input type="text" name="p_name" placeholder="Enter Product Name"> <br><br>
		Price : <input type="text" name="price" placeholder="Enter Product Price"> <br><br>
		Ratings : <input type="text" name="ratings" placeholder="Enter Ratings"> <br><br>
		Quantity : <input type="text" name="qnty" placeholder="Enter Product Quantity"> <br><br>
		<button type="submit">SUBMIT</button>
	</form>
	<br><br><br>
	<div class="center-btn">
		<button><a href="home.jsp" style="text-decoration: none; color: white;"> Welcome To Home Page</a></button>
		<button> <a href="allproducts" style="text-decoration: none; color: white;">View Product Details</a> </button>
	</div>
</body>
</html>