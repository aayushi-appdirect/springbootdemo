
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

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>LOGIN</h1>

<form modelAttribute="user" method="post" class="form-horizontal">
    
    <br/>
    <br/>

    <div class="form-group login-style">
        <label for="inputuserName3" class="col-sm-2 control-label">UserName</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="userName" id="inputuserName3" placeholder="username" required>
        </div>
    </div>
   
    <div class="form-group">
        <label for="inputuserPassword3" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" name="userPassword" id="inputuserPassword3" placeholder="Password" required>
        </div>
    </div>

    
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Sign in</button>
        </div>
    </div>
    </div>
    </header>
</form>
</body>
</html>
