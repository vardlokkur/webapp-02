<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Redirect test</title>
        <script type="text/javascript" src="<c:url value='/js/jquery-1.8.3.min.js' />"></script>
        <script type="text/javascript">
            $(document).ready(
                function() {
                    var entityId = <c:out value="${param.entityId}" default="0" /> + 1;
                    $("#entityId").val(entityId.toString());
                    $("#submitButton").delay(1000).click();
                });
        </script>
    </head>
    <body>
        <p>Enter anything in the input field below, and click on <em>submit</em> button.</p>
        <form action="form.html" method="post">
            <input type="text" id="entityId" name="entityId" />
            <input type="submit" id="submitButton" value="Submit" />
        </form>
    </body>
</html>