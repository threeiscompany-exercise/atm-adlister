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
        <h1 id="profileH1">Welcome, ${sessionScope.user.username.toUpperCase()}! <br>
            <small>${sessionScope.user.email}</small></h1>
        </div>

        <p>View your ads here:</p>

            <div class="row">
                <div class="col-sm-10">
                    <c:forEach var="ad" items="${ads}">
                    <h3><a href="/ads/viewAd?id=${ad.id}">${ad.title}</a></h3>
                    <p>${ad.description}</p>
                    <form action="/ads/delete" method="post">
                        <div class="form-group">
                            <input type="hidden" name="id" class="form-control" value="${ad.id}">
                            <span class="pull-right">
                                    <button id="delete" class="btn btn-default">
                                        <span class="glyphicon glyphicon-minus"></span>
                                    </button>
                                </span>
                        </div>
                    </form>
                    </c:forEach>
                </div>
                <div class="col-sm-2 offset-sm-2" align="right">
                    <a class="btn btn-primary btn-block" href="/WEB-INF/ads/index.jsp" role="button">View all Ads</a><br>
                    <a class="btn btn-info btn-block" href="/ads/create" role="button">Create an Ad</a><br>
                    <a class="btn btn-success btn-block" href="/password_change" role="button">Update Profile</a><br>
                    <%--<a class="btn btn-primary btn-block" href="/ads/delete" role="button">Delete Ad</a><br>--%>
                    <%--<a href="ads/update?id=<c:out value="${ad.id}"/>" class="btn btn-primary" id="update"> update</a>--%>
                </div>

            </div>


    </div>

</body>
</html>
