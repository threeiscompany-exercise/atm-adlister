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
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <p>View your ads here:</p>
        <c:forEach var="ad" items="${ads}">
            <div class="row-md-4">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>

    </div>

</body>
</html>
