<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing Ad Detail" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1><c:out value="${ad.title}"></c:out><br><small><h4>created by: ${user.username}</h4></small></h1>

        <div class="col-md-6">
            <h3>Description</h3>
            <p><c:out value="${ad.description}" /></p>
        </div>
</div>

</body>
</html>
