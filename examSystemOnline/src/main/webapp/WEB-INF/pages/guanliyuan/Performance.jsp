<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>成绩审核</title>
<jsp:include page="${pageContext.request.contextPath}/common/guanliyuan/topbase.jsp"></jsp:include>
    <style>

    </style>
</head>
<body>
<!--头部-->
<jsp:include page="${pageContext.request.contextPath}/common/guanliyuan/head.jsp"></jsp:include>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="${pageContext.request.contextPath}/common/duanliyuan/left.jsp"></jsp:include>

    <div class="main-content" style="margin-top: 0px">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"> > 成绩审核</li>
                </ul>
            </div>
            <div class="page-content" style="padding: 0">
               成绩审核
            </div>
        </div>
    </div>
</div>


</body>
</html>