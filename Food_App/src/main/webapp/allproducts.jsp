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
    .logout-link {
      display: block;
      margin-top: 20px;
      text-align: center;
    }
  </style>
</head>
<body>

<div class="container">
   <% List<Product> products = (List) request.getAttribute("productslist"); %>
  <h2>Product List</h2>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Type</th>
        <th>Cost</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <% for (Product p : products) { %>
      <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getType() %></td>
        <td><%= p.getCost() %></td>
        <td><a href="editproduct?id=<%= p.getId() %>" class="btn btn-primary btn-sm">Edit</a></td>
        <td><a href="deleteproduct?id=<%= p.getId() %>" class="btn btn-danger btn-sm">Delete</a></td>
      </tr>
      <% } %>
    </tbody>
  </table>
  <a href="Adminmenu.jsp" class="logout-link">Logout</a>
</div>

</body>
</html>