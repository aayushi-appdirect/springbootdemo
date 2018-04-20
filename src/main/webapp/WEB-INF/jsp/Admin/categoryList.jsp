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
    <%--<script src="${pageContext.request.contextPath}/resource/js/category.js"></script>--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/glm-ajax.js"></script>--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/product.js"></script>--%>


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
        <caption><h2>List of Categories</h2></caption>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Parent Id</th>
            <th>Created On</th>
            <th>Updated On</th>
            <th>Go To</th>


        </tr>
        </thead>
        <c:forEach var="cat" items="${categorylist}">
            <tbody>
            <tr id="cat_row${cat.id}">
                <td id="cat_id"><c:out value="${cat.id}"/></td>
                <td id="cat_name${cat.id}"><c:out value="${cat.categoryName}"/></td>
                    <%--<td id="cat_name${cat.id}"><a href="/adminController/catProduct/${cat.id}"><c:out value="${cat.categoryName}"/></a></td>--%>

                <td id="cat_parentid${cat.id}"><c:out value="${cat.parentId}"/></td>
                <td id="cat_createdon${cat.id}"><c:out value="${cat.createdOn}"/></td>
                <td id="cat_updatedon${cat.id}"><c:out value="${cat.updatedOn}"/></td>

                <%--<td>--%>
                    <%--<input type='button' id="edit_button${cat.id}" value="edit" onclick="edit_row(${cat.id})">--%>
                    <%--<input type='button' id="save_button${cat.id}" value="save" onclick="save_row(${cat.id})">--%>
                    <%--<input type='button' id="delete_button${cat.id}" value="delete" onclick="delete_row(${cat.id});">--%>
                <%--</td>--%>
                <td>
                    <a href="/adminController/editCategory/${cat.id}" class="btn btn-primary" role="button">EDIT</a>

                <%--<input type='button' id="edit_button${cat.id}" href="/adminController/editCategory/${cat.id}" value="Edit"/>--%>
                    <%--<input type='button' id="save_button${cat.id}" value="save" onclick="save_row(${cat.id})">--%>
                    <%--<input type='button' id="delete_button${cat.id}" value="delete" onclick="delete_row(${cat.id});">--%>
                </td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>


<a href="/adminController/addCategory" class="btn btn-primary" role="button">Add Category</a>


</body>
</html>
