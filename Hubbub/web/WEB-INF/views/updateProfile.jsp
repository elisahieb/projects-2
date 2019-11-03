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
            <h2>Tell Us About Yourself!</h2>
            <c:if test="${not empty flash}">
                <h2 class="flash">${flash}</h2>
            </c:if>
            <div class="w3-container w3-half w3-margin-top">
                <form class="w3-container w3-card-4" method="POST" action="main">
                    <input type="hidden" name="action" value="profile"/>
                    <p>
                        <input class="w3-input" name="firstname" type="text" id="firstname"
                            style="width:90%"/>
                        <label>First Name:</label>
                    </p>
                    <p>
                        <input class="w3-input" name="lastname" id="lastname"
                            style="width:90%"/>
                        <label>Last Name:</label>
                    </p>
                    <p>
                        <input class="w3-input" name="email" id="email"
                            style="width:90%"/>
                        <label>Email:</label>
                    </p>
                    <p>
                        <input class="w3-input" name="timezone" id="timezone"
                            style="width:90%"/>
                        <label>Time Zone:</label>
                    </p>
                    <p>
                        <textarea id="biography" style="max-width:90%; max-height:90%"
                              rows="3" cols="60"
                              onkeyup="charcountupdate(this.value)"
                              name="biography">${param.biography}</textarea><br/>
                        <label for="biography">
                            Characters: <span id="charcount"></span> left
                        </label>
                    </p>
                    <p>
                        <button class="w3-button w3-section w3-ripple"
                            style="background-color:#92C4BE">
                                Update My Profile!
                        </button>
                    </p>             
                </form>
            </div>    
        </div>    
    </body>
    <script type="text/javascript">
        document.getElementById("firstname").focus();
        document.getElementById("biography");
        function charcountupdate(str) {
            var lng = str.length;
            document.getElementById("charcount").innerHTML = 140 - lng;
        }
        charcountupdate("");
    </script>
</html>