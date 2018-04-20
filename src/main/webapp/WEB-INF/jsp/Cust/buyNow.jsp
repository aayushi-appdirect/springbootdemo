<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!doctype html>
<html lang="en">
<head>
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap-theme.css" rel="stylesheet">
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
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">DemoShop</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/userController/homePage">Home</a></li>
        </ul>
        <form class="navbar-form navbar-left" action="/action_page.php">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="search">
            </div>
            <button type="submit" class="btn btn-default">Go</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/userController/reg"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="/userController/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>





</body>
</html>
