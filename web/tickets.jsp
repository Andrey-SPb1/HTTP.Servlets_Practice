<%@ page import="http.service.TicketService" %>
<%@ page import="http.dto.TicketDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Frost
  Date: 30.05.2023
  Time: 13:18
  To change this template use File | Settings | File Templates.
  Link: http://localhost:8081/tickets.jsp?flightId=1
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Купленные билеты</h1>
    <ul>
        <%
            Long flightId = Long.valueOf(request.getParameter("flightId"));
            List<TicketDto> tickets = TicketService.getInstance().findAllByFlightId(flightId);
            for (TicketDto ticket : tickets) {
                out.write(String.format("<li>%s</li>", ticket.getSeatNo()));
            }
        %>
    </ul>
</body>
</html>
