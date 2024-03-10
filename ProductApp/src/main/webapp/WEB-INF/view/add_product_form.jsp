<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file = "base.jsp" %>
</head>
<body>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h1 class="text-center mb-3">Fill the product details</h1>

                <form action="process-product" method="post">
                    <div class="form-group">
                        <label for="name">Product Name</label>
                        <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the product name here">

                    </div>

                    <div class="form-group">
                        <label for="description">Product Description</label>
                        <textarea type="text" class="form-control" id="name" role="5" aria-describedby="emailHelp" name="description" placeholder="Enter the product description here"></textarea>

                    </div>

                    <div class="form-group">
                        <label for="name">Product Price</label>
                        <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="price" placeholder="Enter the product price here">

                    </div>

                    <div class="container text-center">
                        <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>

                        <button type="submit" class="btn btn-outline-primary">Add</button>
                    </div>

                </form>

            </div>

        </div>

    </div>
</body>
</html>