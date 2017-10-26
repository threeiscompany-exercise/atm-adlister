<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<style>
    body {
        background-image: url("Thunderdome.png");
        background-color: cornflowerblue;
    }

    h1 {
        color: maroon;
        margin-left: 40px;
    }
</style>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1 align="center">Welcome to the Thunderdome!</h1>
</div>
</body>
</html>
