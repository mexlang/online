<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>手工组成试卷</title>
<jsp:include page="../common/topbase.jsp"></jsp:include>

</head>
<body class="no-skin">
<!--头部-->
<div id="navbar" class="navbar navbar-default">
    <div id="navbar-container" class="navbar-container">
        <button id="menu-toggler" class="navbar-toggle menu-toggler pull-left" type="button" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a class="navbar-brand" href="#">
                <small>
                    <!--<i class="fa fa-leaf"></i>-->
                    <img src="${pageContext.request.contextPath}/images/tb/kaoshi.png" style="width: 25px;height: 25px;">
                    数据结构在线考试系统<span style="font-size: 12px">——教师端</span>
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/avatars/avatar2.png" alt="Jack's photo">
                            <span class="user-info">
                                <small>Welcome,</small>
                                王老师
                            </span>
                        <!--<i class="ace-icon fa fa-caret-down"></i>-->
                    </a>
                </li>
                <li class="light-blue">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        退出
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../common/left.jsp"></jsp:include>

    <div class="main-content" id="xuanze">
    <!--  paper start  -->
        
        <!-- end -->
    </div>
</div>
</body>
<script type="text/javascript">
var sessionId="<%=session.getAttribute("paperId")%>";
var paperId;
var questionList;
	$(document).ready(function(){
		queryQuestionsToShow();
	});
	
	function queryQuestionsToShow(){
		
		$.post("${pageContext.request.contextPath}/question/queryQuestionsToShow",
			{
			paperId:sessionId,
			},
				function(data){
		       //alert(data);
		       $("#xuanze").empty().html(data);
				});
	}
</script>
</html>