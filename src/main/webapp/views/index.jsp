<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Phone shop </title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }
        .card-body {
            height: 250px; /* Set a fixed height for the card body */
        }

        .card-img-top {
            max-height: 100px; /* Limit the height of the product image */
            object-fit: contain;
        }

       .navbar{
               background-color: #949386;
               color: black;

        }
       .navbar-toggler{
                background-color: #151514;
                color: #c92020;
          }



    </style>
    
</head>
<body class="bg-light">

<section class="wrapper">
<%--        <div class="container-fostrap">--%>
<%--<nav class="navbar-navbar-expand-lg navbar-light bg-light" >--%>
<%--    <div class="container-fluid">--%>
<%--        <a class="navbar-brand" href="#">--%>
<%--            <img th:src="@{/images/logo.png}"  src="../static/images/logo.jpg" width="auto" height="40" class="d-inline-block align-top" alt=""/>--%>
<%--        </a>--%>
<%--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"--%>
<%--                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--		--%>
<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--        <h4>Welcome ${ username } </h4>--%>
<%--            <ul class="navbar-nav mr-auto"></ul>--%>
<%--            <ul class="navbar-nav">--%>
<%--                <li class="nav-item active">--%>
<%--                    <a class="nav-link" th:href="@{/}" href="#">CART</a>--%>
<%--                </li>--%>
<%--                 <li class="nav-item active">--%>
<%--                    <a class="nav-link" href="/" >Profile</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item active">--%>
<%--                    <a class="nav-link" sec:authorize="isAuthenticated()" href="/">Logout</a>--%>
<%--                </li>--%>
<%--               --%>
<%--            </ul>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--</div>--%>

    <nav class="navbar navbar-expand-lg ">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../static/images/logo.jpg" width="auto" height="100" class="d-inline-block align-top" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto"></ul>
                <ul class="navbar-nav
                ">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">CART</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/buy" >Profile</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/" >Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>



</section>

<section>
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
                <img src="../static/images/1.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="../static/images/2.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="../static/images/3.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>





  <section >

      <div class="container">
      <h1>Welcome to  Shop</h1>


      <div class="row">
      <c:forEach var="product" items="${products}">
        <div class="col-md-3">
          <div class="card mb-4">
            <img class="card-img-top" src="${product.image}" alt="Product 1">
            <div class="card-body">
             <b> <h4 class="card-title">${product.name}</h4></b>
              <h5 class="card-text">Category: ${product.category.name}</h5>
              <h5 class="card-text">Price: ${product.price}</h5>
              <p class="card-text">Description: ${product.description}</p>
              <a href="https://rzp.io/i/FJSqTozxs1" class="btn btn-primary">Add to Cart</a>
            </div>
          </div>
        </div> </c:forEach>                        
      </div>

    </div>
    </section>
  <footer>
    <div class="container">
      <p>&copy; 2023 Perishable Shop. All rights reserved
        </p>
    </div>
    </footer>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>