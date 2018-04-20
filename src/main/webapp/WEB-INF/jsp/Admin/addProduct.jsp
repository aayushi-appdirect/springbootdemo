<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
    <link href="${pageContext.request.contextPath}/resource/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.eot" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.svg" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.ttf" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.woff" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.woff2" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.eot" rel="stylesheet">
    <%--<script src="${pageContext.request.contextPath}/resource/js/javaScript.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/javaScript.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<form modelAttribute="product" method="post" class="form-horizontal">

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

    <div class="form-group">
        <label class="col-sm-2 control-label">Product Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="prodName" value="${prodName}" id="inputuproductName3"
                   required>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Category</label>
        <form:select path="categoryList" name="prodCategory">
            <form:options items="${categoryList}"/>
        </form:select>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Product Price</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="prodPrice" value="${prodPrice}" id="inputuproductPrice3"
                   required>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Product Description</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="prodDescription" value="${prodDescription}"
                   id="inputuproductDescription3" required>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">ADD</button>
            <%--<button type="submit" class="btn btn-primary">EDIT</button>--%>
            <%--<button type="submit" class="btn btn-primary">DELETE</button>--%>
        </div>
    </div>
    </div>
    </header>
</form>
</body>
</html>
