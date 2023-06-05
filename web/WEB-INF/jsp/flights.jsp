<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: Frost
  Date: 05.06.2023
  Time: 13:44
  To change this template use File | Settings | File Templates.
  Link: http://localhost:8081/app/flights
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Список перелётов</h1>
    <ul>
        <c:forEach var="flight" items="${requestScope.flights}">
            <li>
                <a href="${pageContext.request.contextPath}/tickets?flightId=${flight.id}">${flight.description}</a>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
