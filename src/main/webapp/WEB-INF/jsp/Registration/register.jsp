
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <title>Document</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="${pageContext.request.contextPath}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap-theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/styles.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resource/js/javaScript.js"></script>
    <%--<script src="http://iamrohit.in/lab/js/location.js"></script>--%>
    <script src="${pageContext.request.contextPath}/resource/js/jquery.js" ></script>
    <%--<script src="${pageContext.request.contextPath}/resource/js/state.js" ></script>--%>
    <link href="${pageContext.request.contextPath}/resource/js/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resource/js/country.js" ></script>



    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%--<header class="header">--%>
    <%--<div class="header-overlay">--%>
        <%--<div class="container">--%>

    <h1>SIGN UP</h1>
<%--<form:form modelAttribute="admin" method="post">--%>

<form modelAttribute="user address" method="post" action="/userController/reg" class="form-horizontal">
    <div class="form-group">
        <label for="firstName" class="col-sm-2 control-label">First Name</label>
        <div class="col-sm-10">
            <input type="text" name="firstName" class="form-control" id="firstName" onblur="allLetter(this,'First Name',4,25)" placeholder="" required >
        </div>
    </div>
    <div class="form-group">
        <label for="inputlastName3" class="col-sm-2 control-label">Last Name</label>
        <div class="col-sm-10">
            <input type="text" name="lastName"class="form-control" id="inputlastName3" onblur="allLetter(this,'Last Name',4,25)" placeholder="" required>
        </div>
    </div>
   
    <div class="form-group">
        <label for="inputuserName3" class="col-sm-2 control-label">User Name</label>
        <div class="col-sm-10">
            <input type="text" name="userName" class="form-control" id="inputuserName3" onblur="allLetter(this,'User Name',4,10)" placeholder="" required>
        </div>
    </div>
    <div class="form-group">
        <label for="inputemailAddress3" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <input type="email" name="emailAddress" class="form-control" id="inputemailAddress3"  onblur="ValidateEmail(this)" placeholder="Email" required>
        </div>
    </div>
    <div class="form-group">
        <label for="inputuserPassword3" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
            <input type="password" name="userPassword" class="form-control" id="inputuserPassword3"  placeholder="Password" required>
        </div>
    </div>
    <div class="form-group">
        <label for="inputuserContact3" class="col-sm-2 control-label">Contact</label>
        <div class="col-sm-10">
            <input type="tel" name="userContact" class="form-control" id="inputuserContact3" onblur="phonenumber(this)" placeholder="Email"  required>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">Address </label>
        <div class="col-sm-10">
            <textarea name="addLine1"  cols="30" rows="3" class="form-control" id="inputaddressline3" required></textarea>
        </div>
    </div>
    <%--<div class="form-group">--%>
        <%--<label  class="col-sm-2 control-label">City</label>--%>
        <%--<div class="col-sm-10">--%>
            <%--<input type="text" name="addCity" cols="30" rows="3" class="form-control" id="inputadddcity3" required onclick="abc()"></input>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" onclick="abc()">Country
            <span class="caret"></span></button>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">State </label>
        <div class="col-sm-10">
            <input type="text" name="addState" cols="30" rows="3" class="form-control" id="inputadddstate3"required></input>

        </div>
    </div>
    
    
    
    <div class="form-group">
        <label  class="col-sm-2 control-label">Pincode</label>
        <div class="col-sm-10">
            <input type="text" name="addPincode" cols="30" rows="3" class="form-control" id="inputadddpincode3" required></input>

        </div>
    </div>
    
    <%--<div class="form-group">--%>
        <%--<div class="col-sm-offset-2 col-sm-10">--%>
            <%--<div class="checkbox">--%>
                <%--<label>--%>
                    <%--<input type="checkbox"> Remember me--%>
                <%--</label>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Sign in</button>
        </div>
    </div>
</form>
<%--</header>--%>
        



         
</body>
</html>
