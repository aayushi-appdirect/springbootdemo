<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
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

    <script src="${pageContext.request.contextPath}/resource/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/javaScript.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/glm-ajax.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/catNavBar.js"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Insert title here</title>

    <script language="javascript">
        str = "";
        $.get("userController/home", function (data) {
            console.log(data)

            data1=JSON.parse(data);
            // console.log(data1)
            // var data1 = jQuery.parseJSON(data);
            for (var i = 0; i < data1.length; i++) {
                console.log(data1[i]);
            //     str = str + `<ul class="nav navbar-nav">
            //         <li class="active dropdown"><div class="container-fluid"><a class="navbar-brand dropdown-toggle" data-toggle="dropdown" href="#"><span>` + data1[i] + `</span></a></div></li>
            //
            // </ul>`
          str=str+  `<ul class="navbar">
                 
                    <li class=" active dropdown">
                    <div class="container-fluid">
                    <button class=" navbar-brand dropbtn">`+data1[i]+`
                    <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                    <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
                </div>
                </div>
                </li> 
                </ul>`

            }
            document.getElementById('catNavbar').innerHTML = str;

        });

    </script>
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

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header" id="catNavbar">
            <%--<a class="navbar-brand" href="#">WebSiteName</a>--%>
        </div>
        <%--<ul class="nav navbar-nav" >--%>
        <%--&lt;%&ndash;<div class="form-group">--%>
        <%--<c:forEach var="cat" items="${categoryList}">--%>
        <%--<label class="col-sm-2 control-label">${cat.categoryName}</label>--%>
        <%--</c:forEach>--%>
        <%--</div>&ndash;%&gt;--%>
        <%----%>
        <%--<form:form>--%>
        <%--<table>--%>

        <%--<c:forEach items="${categoryList}" var="employee">--%>
        <%--<tr>--%>
        <%--<td><c:out value="${employee.categoryName}" /></td>--%>
        <%--</tr>--%>
        <%--</c:forEach>--%>

        <%--</table>--%>
        <%--</form:form>--%>
        <%--</ul>--%>

    </div>
</nav>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner ">
        <div class="item active carousel-size">
            <img class="img-rounded"
                 src="../resource/images/BWAY0124a Retailer Products Website Launch_Website Hero Carousel_1439x461px_FA2.jpg"
                 alt="">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>

        <div class="item carousel-size">
            <img class="img-rounded" src="../resource/images/4b638361-3888-4e77-b1ea-af956fa98d7f.png" alt="Chicago">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>

        <div class="item carousel-size">
            <img class="img-rounded" src="../resource/images/bohemiadesign.jpg" alt="New York">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<%--<div class="container-fluid bg-3 text-center">--%>
<div class="container">
    <br>
    <br>
    <br>
    <div class="row">

        <div class="col-md-3 first-img">
            <img id="image1" src="../resource/images/2-3-years-wb1fbt12multi-warner-bros-original-imaextg57zxc3az7.png"
                 class="img-responsive" style="width:100%" height:auto alt="Image">
            <div class="caption">Tshirt</div>

            <div class="offer">Buy 1 Get 1 Free</div>
            <div class="button"><a href="/userController/buyNow/image1" class="btn btn-primary" role="button">Buy Now</a></div>

        </div>
        <div class="col-md-3">
            <p>Leather Bag</p>
            <img class="img-rounded" src="../resource/images/download.png" class="img-responsive" style="width:100%"
                 alt="Image">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
        <div class="col-md-3">
            <p>Bag 50%OFF</p>
            <img class="img-rounded" src="../resource/images/download (1).png" class="img-responsive" style="width:100%"
                 alt="Image">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
        <div class="col-md-3">
            <p>Black Leather Bag</p>
            <img class="img-rounded" src="../resource/images/eclipse-backpack-backpacks-1496396317.png"
                 class="img-responsive"
                 style="width:100%" alt="Image">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
    </div>
</div>

<br>


<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-sm-3">
            <img class="img-rounded"
                 src="../resource/images/2-3-years-wb1fbt12multi-warner-bros-original-imaextg57zxc3az7.png"
                 class="img-responsive" style="width:100%" alt="Image">
            <div align="center">
                <p>Kids Fashion </p>
                <p>Under Rs.499</p>
                <a href="#" class="btn btn-primary" role="button">Buy Now</a>
            </div>

        </div>
        <div class="col-sm-3">
            <img class="img-rounded" src="../resource/images/91234-philips-original-imaeshujhh8dc24f.jpeg"
                 class="img-responsive"
                 style="width:100%" alt="Image">
            <p>Buy 1 Get 1 Free</p>
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
        <div class="col-sm-3">
            <p>Some text..</p>
            <img class="img-rounded" src="../resource/images/4b638361-3888-4e77-b1ea-af956fa98d7f.png"
                 class="img-responsive"
                 style="width:100%" alt="Image">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
        <div class="col-sm-3">
            <p>Some text..</p>
            <img class="img-rounded" src="../resource/images/4b638361-3888-4e77-b1ea-af956fa98d7f.png"
                 class="img-responsive"
                 style="width:100%" alt="Image">
            <a href="#" class="btn btn-primary" role="button">Buy Now</a>

        </div>
    </div>

    <br><br>
    <div class="container-fluid bg-3 text-center">
        <div class="row">
            <div class="col-sm-3">
                <img class="img-rounded"
                     src="../resource/images/2-3-years-wb1fbt12multi-warner-bros-original-imaextg57zxc3az7.png"
                     class="img-responsive" style="width:100%" alt="Image">
                <p>Kids Fashion </p>
                <p>Under Rs.499</p>
                <a href="#" class="btn btn-primary" role="button">Buy Now</a>

            </div>
            <div class="col-sm-3">
                <img class="img-rounded" src="../resource/images/91234-philips-original-imaeshujhh8dc24f.jpeg"
                     class="img-responsive"
                     style="width:100%" alt="Image">
                <p>Buy 1 Get 1 Free</p>
                <a href="#" class="btn btn-primary" role="button">Buy Now</a>

            </div>
            <div class="col-sm-3">
                <p>Some text..</p>
                <img class="img-rounded" src="../resource/images/4b638361-3888-4e77-b1ea-af956fa98d7f.png"
                     class="img-responsive"
                     style="width:100%" alt="Image">
                <a href="#" class="btn btn-primary" role="button">Buy Now</a>

            </div>
            <div class="col-sm-3">
                <p>Some text..</p>
                <img class="img-rounded" src="../resource/images/4b638361-3888-4e77-b1ea-af956fa98d7f.png"
                     class="img-responsive"
                     style="width:100%" alt="Image">
                <a href="#" class="btn btn-primary" role="button">Buy Now</a>

            </div>
        </div>
    </div>
</div>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid bg-grey">
    <h2 class="text-center">CONTACT</h2>
    <div class="row">
        <div class="col-sm-5">
            <p>Contact us and we'll get back to you within 24 hours.</p>
            <p><span class="glyphicon glyphicon-map-marker"></span> Pune,India</p>
            <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
            <p><span class="glyphicon glyphicon-envelope"></span> myemail@dempshop.com</p>
        </div>
        <div class="col-sm-7">
            <div class="row">
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
            </div>
            <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
            <div class="row">
                <div class="col-sm-12 form-group">
                    <button class="btn btn-default pull-right" type="submit">Send</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
