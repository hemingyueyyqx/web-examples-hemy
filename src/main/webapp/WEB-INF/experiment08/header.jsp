<%--
  Created by IntelliJ IDEA.
  User: 何明月
  Date: 2024/6/28
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .header {
            margin: 10px 0;
        }
        .header ul {
            display: flex;
            background: #333;
            list-style: none;
        }
        .header a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 15px 25px;
        }
        .header a:hover {
            background-color: black;
        }
        .right {
            margin-left: auto;
        }
    </style>
</head>
<body>
<div class="header">
    <ul>
        <li><a href="">Home</a></li>
        <li><a href="">news</a></li>
        <li><a href="">Contact</a></li>
        <li><a href="">About</a></li>
        <li class="right"><a href="">Logout</a></li>
    </ul>
</div>

</body>
</html>
