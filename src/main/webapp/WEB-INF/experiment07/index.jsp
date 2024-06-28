<%--
  Created by IntelliJ IDEA.
  User: 何明月
  Date: 2024/6/28
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>Title</title>
</head>
<body>
<ul>
    <c:forEach items="${users}" var="u">
        <li><a href="jdbc/getuser?userid=${u.id}">${u.name} - ${u.insertTime}</a></li>
    </c:forEach>
</ul>
<hr>
<form action="jdbc/updateuser" method="post">
    <select name="userid" id="">
        <option value=""></option>
        <c:forEach items="${users}" var="u">
            <option value="${u.id}">${u.name}</option>
        </c:forEach>
    </select>
    <input type="text" name="newname">
    <button type="submit">submit</button>
</form>
</body>
</html>
