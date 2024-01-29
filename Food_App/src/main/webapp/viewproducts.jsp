<%@page import="com.jsp.foodapp.entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      padding: 50px;
    }
    .container {
      max-width: 800px;
      margin: auto;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #007bff;
      color: #fff;
    }
    tr:hover {
      background-color: #f2f2f2;
    }
    .submit-order {
      text-align: center;
      margin-top: 30px;
    }
    .submit-order a {
      background-color: #28a745;
      color: #fff;
      padding: 10px 20px;
      border-radius: 5px;
      text-decoration: none;
      transition: background-color 0.3s ease;
    }
    .submit-order a:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>

<div class="container">
  <% List<Product> products = (List) request.getAttribute("productslist"); %>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Type</th>
        <th>Cost</th>
        <th>Add Item</th>
      </tr>
    </thead>
    <tbody>
      <% for (Product p : products) { %>
      <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getType() %></td>
        <td>$<%= p.getCost() %></td>
        <td><a href="additem?id=<%= p.getId() %>" class="btn btn-primary">Add</a></td>
      </tr>
      <% } %>
    </tbody>
  </table>
  
  <div class="submit-order">
    <h1><a href="submitfoodorder" class="btn btn-success">Submit Order</a></h1>
  </div>
</div>

</body>
</html>