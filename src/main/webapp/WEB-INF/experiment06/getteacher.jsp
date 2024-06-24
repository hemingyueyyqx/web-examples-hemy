
<%--
  Created by IntelliJ IDEA.
  User: 何明月
  Date: 2024/6/24
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="teacher" scope="request" type="com.entity.Teacher"/>
<jsp:useBean id="titles" scope="request" type="java.util.List<com.entity.Title>"/>
<jsp:useBean id="courses" scope="request" type="java.util.List<com.entity.Course>"/>
<html>
<head>
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="getteacher" method="post">
<input type="text" value="${teacher.name}">
<br>
<select name="" id="">

    <c:forEach items="${titles}" var="t">
        <c:set var="sel" value=""/>
        <c:if test="${t.id == teacher.title.id}">
            <c:set var="sel" value="selected"/>
        </c:if>
        <option value="${t.id}" ${sel}>${t.name}</option>
    </c:forEach>
</select>
<br>

<c:forEach items="${courses}" var="c">
    <c:set var="ch" value=""/>
    <c:forEach items="${teacher.courses}" var="tc">
      <c:if test="${c.id == tc.id}">
          <c:set var="ch" value="checked"/>
      </c:if>
    </c:forEach>
    <label for=""><input type="checkbox" name="coursesid"${ch}>${c.name}</label>
    <br>
</c:forEach>
</form>
</body>
</html>
