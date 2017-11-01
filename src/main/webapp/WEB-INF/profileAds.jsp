<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <link rel="stylesheet" href="/style/css/pfrofileAdsStyle.css">
    <%--<jsp:include page="/style/css/pfrofileAdsStyle.css"></jsp:include>--%>
</head>
<body>
<jsp:include page="/WEB-INF/partials/profileNavBar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <p>View your ads here:</p>
    <c:forEach var="profileAds" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>
<div>
    <button type="submit" class="btn btn-default">Create Ads</button>
</div>
<%--<div class="stars"></div>--%>
<%--<div class="twinkling"></div>--%>
<%--<div class="clouds"></div>--%>

</body>
</html>
