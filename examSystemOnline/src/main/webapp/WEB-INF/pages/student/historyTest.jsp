<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>历史成绩</title>
</head>
<body>
<nav>
    <div class="testShow">
    
        <table>
            <tr bgcolor="#D7D7D7">
                <td>数据结构考试类型</td>
                <td>时间</td>
                <td>成绩</td>
            </tr>
            <c:forEach items="${onlineTestpapers}" var="testpaper" varStatus="ite">
            <tr>
                <td><a>${testpaper.pagerName}</a></td>
                <td>${testpaper.pagerStarttime}</td>
                <td class="ksBtn"><a href="">${testpaper.examinInfor.studentTotalscope}</a></td>
            </tr>
            </c:forEach>
        </table>
    </div>
</nav>
</body>
