<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <%--<jsp:include page="style/css/login_stylesheet.css"/>--%>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>


    <div class="containerIndex">
        <%--<div class="card-panel teal lighten-2"><H1>WELCOME TO THE THUNDERDOME!!!</H1></div>--%>
        <h1 class="indexH1">Welcome to the Thunderdome!</h1>
    </div>
    <div>

    </div>

</body>
</html>
