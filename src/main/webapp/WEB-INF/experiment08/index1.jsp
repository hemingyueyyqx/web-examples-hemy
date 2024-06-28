<%--
  Created by IntelliJ IDEA.
  User: 何明月
  Date: 2024/6/28
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %><html>
<head>
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .container {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .middle {
            flex-grow: 1;
            display: flex;
        }

        .main {
            margin: 0 15px;
            height: 100%;

        }
        table {
            border-collapse: collapse;
            width: 100%;
            table-layout: fixed;
        }
        th {
            background-color: green;
            color: white;
        }
        table th,
        table td {
            text-align: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        a.btn {
            background-color: rgb(211, 67, 67);
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }
        a.btn:hover {
            background-color: red;
        }
    </style>
</head>
<body>
<div class="container">
        <%@include file="header.jsp"%>
<div class="middle">

        <%@include file="sidebar.jsp"%>

    <div class="main">
        <table>
            <thead>
            <tr>
                <th>#</th>
                <th>姓名</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.name}</td>
                    <td><a href="jdbc/getuser1?userid=${u.id}" class="btn">详细</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
    <%@include file="footer.jsp"%>

</div>
</body>
</html>
