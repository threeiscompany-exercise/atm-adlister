<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <h1>Please Log In</h1>
    <%--<c:if test="${error != null}">--%>
    <%--<p>--%>
    <%--${error}--%>
    <%--</p>--%>
    <%--</c:if>--%>
    <c:if test="${errors.containsKey('username')}">
        <p class="error"> ${errors.get('username')}</p>
    </c:if>
    <c:if test="${errors.containsKey('password')}">
        <p class="error"> ${errors.get('password')}</p>
    </c:if>
    <c:if test="${errors.containsKey('passwordMismatch')}">
        <p class="error"> ${errors.get('passwordMismatch')}</p>
    </c:if>
    <c:if test="${errors.containsKey('noUser')}">
        <p class="error"> ${errors.get('noUser')}</p>
    </c:if>

    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" value="${username}" type="text" autofocus>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" value="${password}">
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
