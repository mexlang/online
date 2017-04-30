<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>考试记录</title>
    <style>
        h3 {
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }
        .ksBtn a{
            color: #429159!important;
        }
    </style>
</head>
<body>
<h3>考试记录：</h3>
<table>
    <tr bgcolor="#D7D7D7">
        <td>考试的模块</td>
        <td>时间</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${onlineTestpapers}" var="testpaper" varStatus="ite">
    <tr>
        <td><a>${testpaper.pagerName}</a></td>
        <td>${testpaper.pagerStarttime}</td>
        <td class="ksBtn"><a href="javaScript:paperShowAnswer(${testpaper.paperId})">查看</a></td>
    </tr>
    </c:forEach>
</table>
</body>
