<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>试卷批改</title>
    <!-- js css -->
<jsp:include page="../common/topbase.jsp"></jsp:include>
</head>
<body class="no-skin">
<!-- 引入头部 -->
<jsp:include page="../common/head.jsp"></jsp:include>

<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../common/left.jsp"></jsp:include>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="${pageContext.request.contextPath}/indexindex">首页</a>
                    </li>
                    <li class="active">试卷批改</li>
                </ul>
            </div>
            <div class="page-content">
<!-- 教师端： 试卷批改 -->
<h2 style="text-align: center;">试卷批改</h2><br/>
                <table style="margin-top: 10px">
                    <tr>
                        <td class="tr_head" style="width:8%;">序号</td>
                        <td class="tr_head"  style="width:30%;">学生编号</td>
                        <td class="tr_head"  style="width:20%;">试卷编号</td>
                        <td class="tr_head"  style="width:12%;">批改状态</td>
                        <td class="tr_head"  style="width:30%;">试卷管理</td>
						</td>
                    </tr>

<c:choose>

<c:when test="${fn:length(resultList)>=1}">

	<c:forEach items="${resultList}" var="user" varStatus="ite">

	               <!-- 考试头信息的列表展示 -->        
          <c:set var="string" value="${user.examFlag}"/>
                 <c:if test="${fn:startsWith(string, '1')}">
			             <tr>
	                        <td>${ite.count}</td>
	                        <td>${user.studentId}</td>
	                        <td>${user.paperId}</td>
	                  		<td style="color: blue;">试卷已批改</td>
                       	    <td><a href="${pageContext.request.contextPath}/TestPaper/selectExamListInfo?studentId='${user.studentId}'&paperId='${user.paperId}'">点击查看</a></td>
	                    </tr>
                 </c:if>
                 
                 <c:if test="${fn:startsWith(string, '0')}">
                 		<tr>
	                        <td>${ite.count}</td>
	                        <td>${user.studentId}</td>
	                        <td>${user.paperId}</td>
	                        <td style="color: red;">试卷未批改</td>
                        	<td><a href="${pageContext.request.contextPath}/TestPaper/selectExamListInfo?studentId=${user.studentId}&paperId=${user.paperId}">点击批改</a>
<!--                         	<a onclick="deleteTestPaperTitleInfo('${user.paperId}');">删除</a> -->
<!--                         	<a href="${pageContext.request.contextPath}/TestPaper/deleteTestPaperTitleInfo?paperId=${user.paperId}">删除</a> -->
                        	</td>
	                    </tr>
                 
                 </c:if>
	
	</c:forEach>

</c:when>

</c:choose>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>