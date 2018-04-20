<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!doctype html>
<html lang="en">
<head>
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap-theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.eot" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.svg" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.ttf" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.woff" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.woff2" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.eot" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/glm-ajax.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/product.js"></script>


    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">demoShop</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/adminController/adminHome">Home</a></li>
            <li class="active"><a href="/adminController/category">Category</a></li>
            <li class="active"><a href="/adminController/productList">Product</a></li>

        </ul>
    </div>
</nav>
<div class="container" align="center">
    <table class="table table-striped">
        <caption><h2>List of Products</h2></caption>
        <thead>
        <tr>

            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Category</th>
            <th>Go To</th>


        </tr>
        </thead>
        <c:forEach var="pro" items="${productList}">

            <tbody>
            <tr id="pro_row${pro.id}">
                <td id="pro_id${pro.id}"><c:out value="${pro.id}"/></td>
                <td id="pro_name${pro.id}"><c:out value="${pro.prodName}"/></td>
                <td id="pro_price${pro.id}"><c:out value="${pro.prodPrice}"/></td>
                <td id="pro_descr${pro.id}"><c:out value="${pro.prodDescription}"/></td>
                <td id="pro_cat${pro.id}"><c:out value="${pro.prodCategory}"/></td>
                <td>
                    <input type='button' id="edit_button${pro.id}" value="edit" onclick="edit_row(${pro.id})">
                    <input type='button' id="save_button${pro.id}" value="save" onclick="save_row(${pro.id})">
                    <input type='button' id="delete_button${pro.id}" value="delete" onclick="delete_row(${pro.id})">
                </td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>


<a href="/adminController/product" class="btn btn-primary" role="button">Add Product</a>


</body>
</html>
