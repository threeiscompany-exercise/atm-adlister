<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">

        <h1>Please Log In</h1>
        <c:if test="${error != null}">
            <p>
                ${error}
            </p>
        </c:if>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-danger btn-block" value="Log In"><br>
            <div>
                <p>
                <h4>Not Registered? <a href="/register" role="button">Sign Up</a>
                </h4>
                </p>
            </div>
        </form>
    </div>
</body>
</html>
