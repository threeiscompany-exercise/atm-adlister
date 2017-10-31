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
                    </c:forEach>
                </div>
                <div class="col-sm-2 offset-sm-2" align="right">
                    <a id="profile1" class="btn btn-primary btn-block" href="/ads/index.jsp" role="button">View all Ads</a><br>
                    <a id="profile2" class="btn btn-info btn-block" href="/ads/create" role="button">Create an Ad</a><br>
                    <a id="profile3" class="btn btn-success btn-block" href="/" role="button">Update Profile</a><br>
                </div>
            </div>


    </div>

</body>
</html>
