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
        #sidebar2 {
            /* 容器宽度*/
            min-width: 200px;
            box-sizing: border-box;
            margin: 0 15px;
        }
        #sidebar2 h2 {
            margin: 0;
        }
        #sidebar2 h2 a {
            display: block;
            background: #3185bf;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
        }
        #sidebar2 ul {
            margin: 0;
            padding: 0;
            background: #f1f1f1;
            list-style: none;
        }
        #sidebar2 li a {
            display: block;
            padding: 8px 15px;
            color: #000;
            text-decoration: none;
            transition: transform 0.5s;
        }
        #sidebar2 li a:hover {
            background: #03a9f4;
            color: white;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
<div id="sidebar2">
    <h2>
        <a href="">云技术管理</a>
    </h2>
    <ul>
        <li><a href="#">云服务器</a></li>
        <li><a href="#">云数据库</a></li>
        <li><a href="#">负载平衡</a></li>
    </ul>
</div>
</body>
</html>
