<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${user}'s Hubbub&trade; &raquo; Profile</title>
        <%@include file="/WEB-INF/jspf/w3csshead.jspf"%>
    </head>
    <body>
        <div id="navbar" class="w3-bar" style="background-color:#92C4BE">
            <a class="w3-bar-item w3-button" href="main?action=timeline">Home</a>
            <a class="w3-bar-item w3-button" href="main?action=logout">Log Out</a>
        </div>
        <div class="w3-container">
             <%@include file="/WEB-INF/jspf/masthead.jspf"%>
            <h2>Your Profile!</h2>
            <c:if test="${not empty flash}">
                <h2 class="flash">${flash}</h2>
            </c:if>
            <div class="w3-card-4" style="margin-bottom:64px">
                <form class="w3-container w3-card-4 w3-margin" method="POST" action="main">
                    <input type="hidden" name="action" value="profile"/>
                    <p>First Name: ${profile.firstName}</p>
                    <p>Last Name: ${profile.lastName}</p>
                    <p>Email: ${profile.email}</p>
                    <p>Time Zone: ${profile.timeZone}</p>
                    <p>Biography: ${profile.biography}</p>
                    <p>
                        <button class="w3-button w3-section w3-ripple"
                            style="background-color:#92C4BE">
                            Update My Information!
                        </button>
                    </p>
                </form>
            </div>
        </div>
    </body>
</html>