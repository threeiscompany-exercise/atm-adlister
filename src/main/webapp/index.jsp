<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <jsp:include page="style/css/login_stylesheet.css"/>


    <div class="container">
        <div class="card-panel teal lighten-2"><H1>WELCOME TO THE THUNDERDOME!!!</H1></div>
        <%--<h1>Welcome to the Thunderdome!</h1>--%>
    </div>
    <div class="row">
        <div class="col s12 m7">
            <div class="card">
                <div class="card-image">
                    <img src="style/img/thunderdome-clipart-10.jpg">
                    <span class="card-title">Card Title</span>
                </div>
                <div class="card-action">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
