<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub&trade; &raquo; Log In</title>
        <%@include file="/WEB-INF/jspf/w3csshead.jspf"%>
    </head>
    <body>
        <div id="navbar" class="w3-bar" style="background-color:#92C4BE">
            <a class="w3-bar-item w3-button" href="main?action=login">I'm a Bub</a>
            <a class="w3-bar-item w3-button" href="main?action=join">Sign me up!</a>
        </div>
        <div class="w3-container">
             <%@include file="/WEB-INF/jspf/masthead.jspf"%>
            <h1>Log In To Hubbub&trade;</h1>
            <div class="w3-display-container w3-display-middle">
                <c:if test="${not empty flash}">
                <h2 style="color:red;">${flash}</h2>
                </c:if>
                <c:if test="${not empty errors}">
                <ul class="w3-ul">
                <c:forEach var="error" items="${errors}">
                    <li style="color:red;">${error}</li>
                </c:forEach>
                </ul>
                </c:if>
                <form class="w3-container" method="POST" action="main">
                    <input type="hidden" name="action" value="login"/>
                    <label><strong>Username</strong></label>
                    <input class="w3-input w3-border w3-light-grey" type="text" name="username"/>
                    <label><strong>Password</strong></label>
                    <input class="w3-input w3-border w3-light-grey" type="password" name="password"/>
                    <button class="w3-btn w3-blue-grey">Log Me In</button>
                </form>
            </div>
        </div>    
    </body>
</html>