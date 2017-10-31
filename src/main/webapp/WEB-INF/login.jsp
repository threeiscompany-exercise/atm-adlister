<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>

</head>
<<<<<<< HEAD
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
=======
<body class="loginBody">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
>>>>>>> master

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
<<<<<<< HEAD
        </div>
    </form>
</div>
=======
        </c:if>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
                <c:if test="${errors.username != null}">
                    <p>
                    <div class="alert alert-danger" role="alert">
                            ${errors.username}
                    </div>
                    </p>
                </c:if>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
                <c:if test="${errors.password != null}">
                    <p>
                    <div class="alert alert-danger" role="alert">
                            ${errors.password}
                    </div>
                    </p>
                </c:if>
            </div>
            <input type="submit" class="btn btn-block" value="Log In"><br>
            <div>
                <p>
                    <h4 id="registar">Not Registered? <a href="/register" role="button">Sign Up</a>
                    </h4>
                </p>
            </div>
        </form>
    </div>

    <div id="main">
        <div id="head-neck-body">
            <div id="head-neck">
                <div id="head">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape29"></div>

                    <div class="shape30"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>

                    <div class="shape33"></div>

                    <div class="shape34"></div>

                    <div class="shape35"></div>

                    <div class="shape36"></div>

                    <div class="shape37"></div>

                    <div class="shape38"></div>

                    <div class="shape39"></div>

                    <div class="shape40"></div>

                    <div class="shape41"></div>

                    <div class="shape42"></div>

                    <div class="shape43"></div>

                    <div class="shape44"></div>

                    <div class="shape45"></div>

                    <div class="shape46"></div>

                    <div class="shape47"></div>

                    <div class="shape48"></div>

                    <div class="shape49"></div>

                    <div class="shape50"></div>

                    <div class="shape51"></div>

                    <div class="shape52"></div>

                    <div class="shape53"></div>

                    <div class="shape54"></div>

                    <div class="shape55"></div>

                    <div class="shape56"></div>

                    <div class="shape57"></div>

                    <div class="shape58"></div>

                    <div class="shape59"></div>

                    <div class="shape60"></div>

                    <div class="shape61"></div>

                    <div class="shape62"></div>

                    <div class="shape63"></div>

                    <div class="shape64"></div>

                    <div class="shape65"></div>

                    <div class="shape66"></div>

                    <div class="shape67"></div>

                    <div class="shape68"></div>

                    <div class="shape69"></div>

                    <div class="shape70"></div>

                    <div class="shape71"></div>

                    <div class="shape72"></div>

                    <div class="shape73"></div>

                    <div class="shape74"></div>

                    <div class="shape75"></div>

                    <div class="shape76"></div>

                    <div class="shape77"></div>

                    <div class="shape78"></div>

                    <div class="shape79"></div>

                    <div class="shape80"></div>

                    <div class="shape81"></div>

                    <div class="shape82"></div>

                    <div class="shape83"></div>

                    <div class="shape84"></div>

                    <div class="shape85"></div>

                    <div class="shape86"></div>

                    <div class="shape87"></div>

                    <div class="shape88"></div>

                    <div class="shape89"></div>

                    <div class="shape90"></div>

                    <div class="shape91"></div>

                    <div class="shape92"></div>

                    <div class="shape93"></div>

                    <div class="shape94"></div>

                    <div class="shape95"></div>

                    <div class="shape96"></div>

                    <div class="shape97"></div>

                    <div class="shape98"></div>

                    <div class="shape99"></div>

                    <div class="shape100"></div>

                    <div class="shape101"></div>

                    <div class="shape102"></div>

                    <div class="shape103"></div>

                    <div class="shape104"></div>

                    <div class="shape105"></div>

                    <div class="shape106"></div>

                    <div class="shape107"></div>

                    <div class="shape108"></div>

                    <div class="shape109"></div>

                    <div class="shape110"></div>

                    <div class="shape111"></div>

                    <div class="shape112"></div>

                    <div class="shape113"></div>

                    <div class="shape114"></div>

                    <div class="shape115"></div>

                    <div class="shape116"></div>

                    <div class="shape117"></div>

                    <div class="shape118"></div>

                    <div class="shape119"></div>

                    <div class="shape120"></div>

                    <div class="shape121"></div>

                    <div class="shape122"></div>

                    <div class="shape123"></div>

                    <div class="shape124"></div>

                    <div class="shape125"></div>

                    <div class="chin-laser-wrapper">
                        <div class="laser"></div>

                        <div class="chin-laser-overlay"></div>
                    </div>

                    <div class="chin-gun">
                        <div class="shape1"></div>

                        <div class="shape2"></div>

                        <div class="shape3"></div>

                        <div class="shape24"></div>

                        <div class="shape25"></div>
                    </div>
                </div>

                <div id="neck">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape1"></div>

                    <div class="shape2"></div>

                    <div class="shape3"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape24"></div>

                    <div class="shape25"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape29"></div>

                    <div class="shape30"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>

                    <div class="shape33"></div>
                </div>
            </div>

            <div id="body">
                <div id="main-shell">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape1"></div>

                    <div class="shape2"></div>

                    <div class="shape3"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape24"></div>

                    <div class="shape25"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape29"></div>

                    <div class="shape30"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>

                    <div class="shape33"></div>

                    <div class="shape34"></div>

                    <div class="shape35"></div>

                    <div class="shape36"></div>

                    <div class="shape37"></div>

                    <div class="shape38"></div>

                    <div class="shape39"></div>

                    <div class="shape40"></div>

                    <div class="shape41"></div>

                    <div class="shape42"></div>

                    <div class="shape43"></div>

                    <div class="shape44"></div>

                    <div class="shape45"></div>

                    <div class="shape46"></div>

                    <div class="shape47"></div>

                    <div class="shape48"></div>

                    <div class="shape49"></div>

                    <div class="shape50"></div>

                    <div class="shape51"></div>

                    <div class="shape52"></div>

                    <div class="shape53"></div>

                    <div class="shape54"></div>

                    <div class="shape55"></div>

                    <div class="shape56"></div>

                    <div class="shape57"></div>

                    <div class="shape58"></div>

                    <div class="shape59"></div>

                    <div class="shape60"></div>

                    <div class="shape61"></div>

                    <div class="shape62"></div>

                    <div class="shape63"></div>

                    <div class="shape64"></div>

                    <div class="shape65"></div>

                    <div class="shape66"></div>

                    <div class="shape67"></div>

                    <div class="shape68"></div>

                    <div class="shape69"></div>

                    <div class="shape70"></div>

                    <div class="shape71"></div>

                    <div class="shape72"></div>

                    <div class="shape73"></div>

                    <div class="shape74"></div>

                    <div class="shape75"></div>

                    <div class="shape76"></div>

                    <div class="shape77"></div>

                    <div class="shape78"></div>

                    <div class="shape79"></div>

                    <div class="shape80"></div>

                    <div class="shape81"></div>

                    <div class="shape82"></div>

                    <div class="shape83"></div>

                    <div class="shape84"></div>

                    <div class="shape85"></div>

                    <div class="shape86"></div>

                    <div class="shape87"></div>

                    <div class="shape88"></div>

                    <div class="shape89"></div>

                    <div class="shape90"></div>

                    <div class="shape91"></div>

                    <div class="shape92"></div>

                    <div class="shape93"></div>

                    <div class="shape94"></div>

                    <div class="shape95"></div>

                    <div class="shape96"></div>

                    <div class="shape97"></div>

                    <div class="shape98"></div>

                    <div class="shape99"></div>

                    <div class="shape100"></div>

                    <div class="shape101"></div>

                    <div class="shape102"></div>

                    <div class="shape103"></div>

                    <div class="shape104"></div>

                    <div class="shape105"></div>

                    <div class="shape106"></div>

                    <div class="shape107"></div>

                    <div class="shape108"></div>

                    <div class="shape109"></div>

                    <div class="shape110"></div>

                    <div class="shape111"></div>

                    <div class="shape112"></div>

                    <div class="shape113"></div>

                    <div class="shape114"></div>

                    <div class="shape115"></div>

                    <div class="shape116"></div>

                    <div class="shape117"></div>

                    <div class="shape118"></div>

                    <div class="shape119"></div>

                    <div class="shape120"></div>

                    <div class="shape134"></div>

                    <div class="shape135"></div>

                    <div class="shape136"></div>

                    <div class="shape137"></div>

                    <div class="shape138"></div>

                    <div class="shape139"></div>

                    <div class="shape140"></div>

                    <div class="shape141"></div>

                    <div class="shape142"></div>
                </div>

                <div class="shape121"></div>

                <div class="shape122"></div>

                <div class="shape123"></div>

                <div class="shape124"></div>

                <div class="shape125"></div>

                <div class="shape126"></div>

                <div class="shape127"></div>

                <div class="shape128"></div>

                <div class="shape129"></div>

                <div class="shape130"></div>

                <div class="shape131"></div>

                <div class="shape132"></div>

                <div class="shape133"></div>

                <div class="shape143"></div>

                <div class="shape144"></div>

                <div class="shape145"></div>

                <div class="shape146"></div>

                <div class="shape147"></div>

                <div class="shape148"></div>

                <div class="shape149"></div>
            </div>

            <div id="front-leg-back">
                <div id="thigh">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape1"></div>

                    <div class="shape2"></div>

                    <div class="shape3"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape24"></div>

                    <div class="shape25"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape29"></div>

                    <div class="shape30"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>
                </div>

                <div id="shin">
                    <div class="shape33"></div>

                    <div class="shape34"></div>

                    <div class="shape35"></div>

                    <div class="shape36"></div>

                    <div class="shape37"></div>

                    <div class="shape38"></div>

                    <div class="shape39"></div>

                    <div class="shape40"></div>

                    <div class="shape41"></div>

                    <div class="shape42"></div>

                    <div class="shape43"></div>

                    <div class="shape44"></div>

                    <div class="shape45"></div>

                    <div class="shape46"></div>

                    <div class="shape47"></div>

                    <div class="shape48"></div>

                    <div class="shape49"></div>

                    <div class="shape50"></div>

                    <div class="shape51"></div>

                    <div class="shape52"></div>

                    <div class="shape53"></div>

                    <div class="shape54"></div>

                    <div class="shape55"></div>

                    <div class="shape56"></div>

                    <div class="shape57"></div>

                    <div class="shape58"></div>

                    <div class="shape59"></div>

                    <div class="shape60"></div>

                    <div class="shape61"></div>

                    <div id="foot">
                        <div class="shape62"></div>

                        <div class="shape63"></div>

                        <div class="shape64"></div>

                        <div class="shape65"></div>

                        <div class="shape66"></div>

                        <div class="shape67"></div>

                        <div class="shape68"></div>

                        <div class="shape69"></div>

                        <div class="shape70"></div>

                        <div class="shape71"></div>

                        <div class="shape72"></div>

                        <div class="shape73"></div>

                        <div class="shape74"></div>

                        <div class="shape75"></div>

                        <div class="shape76"></div>

                        <div class="shape77"></div>

                        <div class="shape78"></div>

                        <div class="shape79"></div>

                        <div class="shape80"></div>

                        <div class="shape81"></div>

                        <div class="shape82"></div>

                        <div class="shape83"></div>

                        <div class="shape84"></div>

                        <div class="shape85"></div>

                        <div class="shape86"></div>

                        <div class="shape87"></div>

                        <div class="shape88"></div>

                        <div class="shape89"></div>

                        <div class="shape90"></div>

                        <div class="shape91"></div>

                        <div class="shape92"></div>

                        <div class="shape93"></div>

                        <div class="shape94"></div>

                        <div class="shape95"></div>

                        <div class="shape96"></div>

                        <div class="shape97"></div>

                        <div class="shape98"></div>

                        <div class="shape99"></div>

                        <div class="shape100"></div>

                        <div class="shape101"></div>

                        <div class="shape102"></div>

                        <div class="shape103"></div>

                        <div class="shape104"></div>

                        <div class="shape105"></div>

                        <div class="shape106"></div>

                        <div class="shape107"></div>
                    </div>
                </div>
            </div>

            <div id="front-leg-front">
                <div id="thigh">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape1"></div>

                    <div class="shape2"></div>

                    <div class="shape3"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape24"></div>

                    <div class="shape25"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape29"></div>

                    <div class="shape30"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>
                </div>

                <div id="shin">
                    <div class="shape33"></div>

                    <div class="shape34"></div>

                    <div class="shape35"></div>

                    <div class="shape36"></div>

                    <div class="shape37"></div>

                    <div class="shape38"></div>

                    <div class="shape39"></div>

                    <div class="shape40"></div>

                    <div class="shape41"></div>

                    <div class="shape42"></div>

                    <div class="shape43"></div>

                    <div class="shape44"></div>

                    <div class="shape45"></div>

                    <div class="shape46"></div>

                    <div class="shape47"></div>

                    <div class="shape48"></div>

                    <div class="shape49"></div>

                    <div class="shape50"></div>

                    <div class="shape51"></div>

                    <div class="shape52"></div>

                    <div class="shape53"></div>

                    <div class="shape54"></div>

                    <div class="shape55"></div>

                    <div class="shape56"></div>

                    <div class="shape57"></div>

                    <div class="shape58"></div>

                    <div class="shape59"></div>

                    <div class="shape60"></div>

                    <div class="shape61"></div>

                    <div id="foot">
                        <div class="shape62"></div>

                        <div class="shape63"></div>

                        <div class="shape64"></div>

                        <div class="shape65"></div>

                        <div class="shape66"></div>

                        <div class="shape67"></div>

                        <div class="shape68"></div>

                        <div class="shape69"></div>

                        <div class="shape70"></div>

                        <div class="shape71"></div>

                        <div class="shape72"></div>

                        <div class="shape73"></div>

                        <div class="shape74"></div>

                        <div class="shape75"></div>

                        <div class="shape76"></div>

                        <div class="shape77"></div>

                        <div class="shape78"></div>

                        <div class="shape79"></div>

                        <div class="shape80"></div>

                        <div class="shape81"></div>

                        <div class="shape82"></div>

                        <div class="shape83"></div>

                        <div class="shape84"></div>

                        <div class="shape85"></div>

                        <div class="shape86"></div>

                        <div class="shape87"></div>

                        <div class="shape88"></div>

                        <div class="shape89"></div>

                        <div class="shape90"></div>

                        <div class="shape91"></div>

                        <div class="shape92"></div>

                        <div class="shape93"></div>

                        <div class="shape94"></div>

                        <div class="shape95"></div>

                        <div class="shape96"></div>

                        <div class="shape97"></div>

                        <div class="shape98"></div>

                        <div class="shape99"></div>

                        <div class="shape100"></div>

                        <div class="shape101"></div>

                        <div class="shape102"></div>

                        <div class="shape103"></div>

                        <div class="shape104"></div>

                        <div class="shape105"></div>

                        <div class="shape106"></div>

                        <div class="shape107"></div>
                    </div>
                </div>
            </div>

            <div id="back-leg-front">
                <div id="thigh">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape1"></div>

                    <div class="shape2"></div>

                    <div class="shape3"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape24"></div>

                    <div class="shape25"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>
                </div>

                <div id="shin">
                    <div class="shape33"></div>

                    <div class="shape34"></div>

                    <div class="shape35"></div>

                    <div class="shape36"></div>

                    <div class="shape37"></div>

                    <div class="shape38"></div>

                    <div class="shape39"></div>

                    <div class="shape40"></div>

                    <div class="shape41"></div>

                    <div class="shape42"></div>

                    <div class="shape43"></div>

                    <div class="shape44"></div>

                    <div class="shape45"></div>

                    <div class="shape46"></div>

                    <div class="shape47"></div>

                    <div class="shape48"></div>

                    <div class="shape49"></div>

                    <div class="shape50"></div>

                    <div class="shape51"></div>

                    <div class="shape52"></div>

                    <div class="shape53"></div>

                    <div class="shape54"></div>

                    <div class="shape55"></div>

                    <div class="shape57"></div>

                    <div class="shape59"></div>

                    <div class="shape61"></div>

                    <div id="foot">
                        <div class="shape62"></div>

                        <div class="shape63"></div>

                        <div class="shape64"></div>

                        <div class="shape65"></div>

                        <div class="shape66"></div>

                        <div class="shape67"></div>

                        <div class="shape68"></div>

                        <div class="shape69"></div>

                        <div class="shape70"></div>

                        <div class="shape71"></div>

                        <div class="shape72"></div>

                        <div class="shape73"></div>

                        <div class="shape74"></div>

                        <div class="shape75"></div>

                        <div class="shape76"></div>

                        <div class="shape77"></div>

                        <div class="shape78"></div>

                        <div class="shape79"></div>

                        <div class="shape80"></div>

                        <div class="shape81"></div>

                        <div class="shape82"></div>

                        <div class="shape83"></div>

                        <div class="shape84"></div>

                        <div class="shape85"></div>

                        <div class="shape86"></div>

                        <div class="shape87"></div>

                        <div class="shape88"></div>

                        <div class="shape89"></div>

                        <div class="shape90"></div>

                        <div class="shape91"></div>

                        <div class="shape92"></div>

                        <div class="shape93"></div>

                        <div class="shape94"></div>

                        <div class="shape95"></div>

                        <div class="shape96"></div>

                        <div class="shape97"></div>

                        <div class="shape98"></div>

                        <div class="shape99"></div>

                        <div class="shape100"></div>

                        <div class="shape101"></div>

                        <div class="shape102"></div>

                        <div class="shape103"></div>

                        <div class="shape104"></div>

                        <div class="shape105"></div>

                        <div class="shape106"></div>

                        <div class="shape107"></div>
                    </div>
                </div>
            </div>

            <div id="back-leg-back">
                <div id="thigh">
                    <div class="shape02"></div>

                    <div class="shape0"></div>

                    <div class="shape01"></div>

                    <div class="shape1"></div>

                    <div class="shape2"></div>

                    <div class="shape3"></div>

                    <div class="shape4"></div>

                    <div class="shape5"></div>

                    <div class="shape6"></div>

                    <div class="shape7"></div>

                    <div class="shape8"></div>

                    <div class="shape9"></div>

                    <div class="shape11"></div>

                    <div class="shape12"></div>

                    <div class="shape13"></div>

                    <div class="shape14"></div>

                    <div class="shape15"></div>

                    <div class="shape16"></div>

                    <div class="shape17"></div>

                    <div class="shape18"></div>

                    <div class="shape19"></div>

                    <div class="shape20"></div>

                    <div class="shape21"></div>

                    <div class="shape22"></div>

                    <div class="shape23"></div>

                    <div class="shape24"></div>

                    <div class="shape25"></div>

                    <div class="shape26"></div>

                    <div class="shape27"></div>

                    <div class="shape28"></div>

                    <div class="shape31"></div>

                    <div class="shape32"></div>
                </div>

                <div id="shin">
                    <div class="shape33"></div>

                    <div class="shape34"></div>

                    <div class="shape35"></div>

                    <div class="shape36"></div>

                    <div class="shape37"></div>

                    <div class="shape38"></div>

                    <div class="shape39"></div>

                    <div class="shape40"></div>

                    <div class="shape41"></div>

                    <div class="shape42"></div>

                    <div class="shape43"></div>

                    <div class="shape44"></div>

                    <div class="shape45"></div>

                    <div class="shape46"></div>

                    <div class="shape47"></div>

                    <div class="shape48"></div>

                    <div class="shape49"></div>

                    <div class="shape50"></div>

                    <div class="shape51"></div>

                    <div class="shape52"></div>

                    <div class="shape53"></div>

                    <div class="shape54"></div>

                    <div class="shape55"></div>

                    <div class="shape57"></div>

                    <div class="shape59"></div>

                    <div class="shape61"></div>

                    <div id="foot">
                        <div class="shape62"></div>

                        <div class="shape63"></div>

                        <div class="shape64"></div>

                        <div class="shape65"></div>

                        <div class="shape66"></div>

                        <div class="shape67"></div>

                        <div class="shape68"></div>

                        <div class="shape69"></div>

                        <div class="shape70"></div>

                        <div class="shape71"></div>

                        <div class="shape72"></div>

                        <div class="shape73"></div>

                        <div class="shape74"></div>

                        <div class="shape75"></div>

                        <div class="shape76"></div>

                        <div class="shape77"></div>

                        <div class="shape78"></div>

                        <div class="shape79"></div>

                        <div class="shape80"></div>

                        <div class="shape81"></div>

                        <div class="shape82"></div>

                        <div class="shape83"></div>

                        <div class="shape84"></div>

                        <div class="shape85"></div>

                        <div class="shape86"></div>

                        <div class="shape87"></div>

                        <div class="shape88"></div>

                        <div class="shape89"></div>

                        <div class="shape90"></div>

                        <div class="shape91"></div>

                        <div class="shape92"></div>

                        <div class="shape93"></div>

                        <div class="shape94"></div>

                        <div class="shape95"></div>

                        <div class="shape96"></div>

                        <div class="shape97"></div>

                        <div class="shape98"></div>

                        <div class="shape99"></div>

                        <div class="shape100"></div>

                        <div class="shape101"></div>

                        <div class="shape102"></div>

                        <div class="shape103"></div>

                        <div class="shape104"></div>

                        <div class="shape105"></div>

                        <div class="shape106"></div>

                        <div class="shape107"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


>>>>>>> master
</body>
</html>
