<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<%--<html>--%>
<%--<head>--%>
    <%--<jsp:include page="/WEB-INF/partials/head.jsp">--%>
        <%--<jsp:param name="title" value="Your Profile" />--%>
    <%--</jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>

<%--<div class="container">--%>
    <%--<h1>Welcome, ${user.username}!</h1>--%>
    <%--<h3>Current email is ${user.email}</h3>--%>
    <%--<p>${passChange}</p>--%>
    <%--&lt;%&ndash;<a class="button" href="/updateProfile">Edit profile</a>&ndash;%&gt;--%>
    <%--<a class="button" href="/password_change">Change password</a>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/profileNavBar.jsp"/>

<div class="container">
    <div class="form">
        <h1 id="profileH1">Welcome, ${sessionScope.user.username.toUpperCase()}! <br>
            <small>Current email is ${sessionScope.user.email}</small></h1>
        <%--<h1>Welcome, ${user.username.toUpperCase()}!</h1>--%>
        <%--<small><h3 class="center">Current email is ${user.email}</h3></small>--%>
        <h3>Please Update your Email</h3>
        <form action="/updateProfile" method="post">
            <div class="form-group">
                <label for="email">New Email</label>
                <input id="email" name="email" class="form-control" value="${email}">
                <c:if test="${error != null}">
                    <p class="error">
                            ${error}
                    </p>
                </c:if>
            </div>
            <div>
                <a class="btn btn-primary btn-block" href="/ads" role="button">Submit</a><br>
            </div>
            <%--<div class="row">--%>
                <%--<div class="col-xs-6 col-xs-offset-3">--%>
                    <%--<input type="submit" class="login-btn btn btn-primary">--%>
                <%--</div>--%>
            <%--</div>--%>
        </form>
    </div>
</div>
</body>
</html>