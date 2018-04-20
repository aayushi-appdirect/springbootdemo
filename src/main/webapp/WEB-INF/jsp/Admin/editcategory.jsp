
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
         <%--pageEncoding="UTF-8"%>--%>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>--%>


<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap-theme.css">--%>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.css">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/css/styles.css" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.eot" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.svg" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.ttf" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.woff" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.woff2" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/resource/fonts/glyphicons-halflings-regular.eot" rel="stylesheet">--%>

    <%--<meta charset="UTF-8">--%>
    <%--<meta name="viewport"--%>
          <%--content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
    <%--<title>Document</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form  method="post" class="form-horizontal" action="/adminController/editCategoryAfterList" modelAttribute="category">--%>

    <%--<nav class="navbar navbar-inverse">--%>
        <%--<div class="container-fluid">--%>
            <%--<div class="navbar-header">--%>
                <%--<a class="navbar-brand" href="#">demoShop</a>--%>
            <%--</div>--%>
            <%--<ul class="nav navbar-nav">--%>
                <%--<li class="active"><a href="/adminController/adminHome">Home</a></li>--%>
                <%--<li class="active"><a href="/adminController/category">Category</a></li>--%>
                <%--<li class="active"><a href="/adminController/productList">Product</a></li>--%>

            <%--</ul>--%>
        <%--</div>--%>
    <%--</nav>--%>


    <%--<div class="form-group">--%>
        <%--<label  class="col-sm-2 control-label">Parent Id</label>--%>
        <%--<div class="col-sm-10">--%>
            <%--<input type="number" class="form-control" name="parentId" id="inputuparentId3" value="${category.parentId}" required>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<label  class="col-sm-2 control-label">Category Name</label>--%>
        <%--<div class="col-sm-10">--%>
            <%--<input type="text" class="form-control" name="categoryName" id="inputucategoryName3" value="${category.categoryName}" required>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<input type="hidden" class="form-control" name="createdOn" value="${category.createdOn}" required>--%>
    <%--<input type="hidden" class="form-control" name="updatedOn"  value="${category.updatedOn}" required>--%>

    <%--<div class="form-group">--%>
        <%--<div class="col-sm-offset-2 col-sm-10">--%>
            <%--<button type="submit" class="btn btn-primary">ADD</button>--%>
                <%--&lt;%&ndash;<a href="/adminController/addCategory" class="btn btn-primary" role="button">Add Product</a>&ndash;%&gt;--%>
            <%----%>
        <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</header>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>


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

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<form modelAttribute="category" action="/adminController/editCategoryAfterList" method="post" class="form-horizontal">

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
        <label  class="col-sm-2 control-label">Parent Id</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="parentId" value="${category.parentId}" id="inputuparentId3" required>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">Category Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="categoryName" value="${category.categoryName}" id="inputucategoryName3" required>
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <input type="hidden" class="form-control" name="id" value="${category.id}" id="inputucategoryid" required>

            <button type="submit" class="btn btn-primary">ADD</button>
        </div>
    </div>
    </div>
    </header>
</form>
</body>
</html>


