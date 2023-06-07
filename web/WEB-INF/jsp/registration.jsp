<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: Frost
  Date: 05.06.2023
  Time: 16:40
  To change this template use File | Settings | File Templates.
  Link: http://localhost:8081/registration
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/registration" method="post" enctype="multipart/form-data">
        <label for="nameId">Name:
            <input type="text" name="name" id="nameId">
        </label><br>
        <label for="birthdayId">Birthday:
            <input type="date" name="birthday" id="birthdayId">
        </label><br>
        <label for="imageId">Image:
            <input type="file" name="image" id="imageId">
        </label><br>
        <label for="emailId">Email:
            <input type="text" name="email" id="emailId">
        </label><br>
        <label for="passwordId">Password:
            <input type="password" name="password" id="passwordId">
        </label><br>
        <label>
            <select name="role" id="roleId">
                <c:forEach var="role" items="${requestScope.roles}">
                    <option value="${role}">${role}</option>
                </c:forEach>
            </select><br>
        </label>
        <label>
            <c:forEach var="gender" items="${requestScope.genders}">
                <input type="radio" name="gender" value="${gender}">${gender}
            </c:forEach>
            <br>
        </label>
        <button type="submit">Send</button>
        <c:if test="${not empty requestScope.errors}">
            <div style="color: red">
                <c:forEach var="error" items="${requestScope.errors}">
                    <span>${error.message}</span><br>
                </c:forEach>
            </div>
        </c:if>
    </form>
</body>
</html>
