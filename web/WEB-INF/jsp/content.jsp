<%--
  Created by IntelliJ IDEA.
  User: Frost
  Date: 30.05.2023
  Time: 14:23
  To change this template use File | Settings | File Templates.
  http://localhost:8081/content?id=5&test=hello
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp"%>
    <div>
        <span>Content. Контент</span>
        <p>Size: ${requestScope.flights.size()}</p>
        <p>Id: ${requestScope.flights.get(0).id}</p>
        <p>Id 2: ${requestScope.flights[1].id}</p>
        <p>Map id 2: ${sessionScope.flightsMap[1]}</p>
        <p>JSESSION id: ${cookie["JSSESIONID"].value} unique identifier</p>
        <p>Header: ${header["Cookie"]}</p>
        <p>Param id: ${param.id}</p>
        <p>Param test: ${param.test}</p>
        <p>Empty list: ${empty flights}</p>
    </div>
<%@ include file="footer.jsp"%>
</body>
</html>
