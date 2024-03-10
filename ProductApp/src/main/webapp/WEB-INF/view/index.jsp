<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
<%@ page import="com.product.Model.Product" %>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product app</title>
    <%@ include file = "./base.jsp" %>
</head>
<body>
    
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center mb-3">Welcome</h1>

                <table class="table">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>

                      <tbody>
                        <%
                            List<Product> products = (List<Product>) request.getAttribute("product");
                            for (Product product : products) {
                        %>
                        <tr>
                            <th scope="row"> TECHONLY<%= product.getId() %></th>
                            <td><%= product.getName() %></td>
                            <td><%= product.getDescription() %></td>
                            <td><%= product.getPrice() %> Rs</td>
                            <td>
                              <a href="delete-product/<%= product.getId() %>">
                              <i class="fas fa-trash-alt  text-danger" ></i></a>

                              <a href="update/<%= product.getId() %>">
                                <i class="fas fa-edit ml-4 text-warning" ></i></a>
                            </td>
                            
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                    </tbody>
                  </table>

                  <div class="container text-center">
                    <a href="add-product" class="btn btn-outline-primary">Add product</a>
                  </div>

            </div>

        </div>

    </div>

</body>
</html>