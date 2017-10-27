<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/profileNavBar.jsp" />

    <div class="container">
        <div class="page-header">
            <%--<h1>Example page header <small>Subtext for header</small></h1>--%>
        <h1 id="profileH1">Welcome, ${sessionScope.user.username.toUpperCase()}! <br> <small>${sessionScope.user.email}</small></h1>
        <p>View your ads here:</p>
        <c:forEach var="ad" items="${ads}">
            <div class="row-md-4">
                <h2><a href="/ads/viewAd?id=${ad.id}">${ad.title}</a></h2>

                <p>${ad.description}</p>
            </div>
        </c:forEach>
        <br>

            <div>
                <a class="btn btn-default" href="/ads/create" role="button">Create an Ad</a>
            </div>
        </div>
    </div>

</body>
</html>
