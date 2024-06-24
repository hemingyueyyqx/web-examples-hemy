<%--
  Created by IntelliJ IDEA.
  User: 何明月
  Date: 2024/6/24
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="teachers" scope="request" type="java.util.List<com.entity.Teacher>"/>
<html>
<head>
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>
    <table>
        <tr>
            <td>#</td>
            <td>name</td>
            <td>time</td>
        </tr>
        <c:forEach items="${teachers}" var="t" varStatus="s">
            <tr>
                <td>${s.count}</td>
                <td><a href="getteacher?tid=${t.id }">${t.name }</a></td>
                <td>${t.insertTime}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
