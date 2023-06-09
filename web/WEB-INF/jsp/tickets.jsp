<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: Frost
  Date: 30.05.2023
  Time: 13:18
  To change this template use File | Settings | File Templates.
  Link: http://localhost:8081/tickets?flightId=2
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${not empty requestScope.tickets}">
        <h1>Купленные билеты</h1>
        <ul>
            <c:forEach var="ticket" items="${requestScope.tickets}">
                <li>${fn:toUpperCase(ticket.seatNo)}</li>
            </c:forEach>
        </ul>
    </c:if>
</body>
</html>
