<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>试卷批改</title>
    <jsp:include page="../common/topbase.jsp"></jsp:include>
    
</head>
<body class="no-skin">
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
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="${pageContext.request.contextPath}/indexindex">首页</a>
                    </li>
                    <li class="active">试卷批改</li>
                    <li class="active">批阅</li>
                </ul>
            </div>
            <div class="page-content">
          <div class="test_paper">
                    <div class="test_paperT"  style="width:100%;padding: 10px 20px">试卷预览</div>
            
			<div class="topicT">一、选择题（每题 2 分，共20分）</div>
			<c:choose>
	<c:when test="${fn:length(xuanzeList)>=1}">
			<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
			<c:set var="eflag" value="${xuanze.examintionResult}"/>
			
				<div class="topic">
					<p class="topicC">${ite.count} <c:out value="${xuanze.questionName}"></c:out> </p>
					<input type="radio" name="one" class="options">A.${xuanze.optionA}<br>
					<input type="radio" name="one" class="options">B.${xuanze.optionB}<br>
					<input type="radio" name="one" class="options">C.${xuanze.optionC}<br>
					<input type="radio" name="one" class="options">D.${xuanze.optionD}
				</div>
				 <c:if test="${fn:startsWith(eflag, '1')}">
				            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <span style="color: red;">正确</span>
                            </label>
                  </c:if>
                  <c:if test="${fn:startsWith(eflag, '2')}">
				            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <span style="color: red;">错误 </span>
                            </label>
                  </c:if>
			</c:forEach>
</c:when>


</c:choose>
			<div class="topicT">二、判断题（每题 2 分，共20分）</div>
			<c:forEach items="${panduanList}" var="panduan" varStatus="ite">
			<c:set var="eflag" value="${panduan.examintionResult}"/>
				<div class="topic">
					<p class="topicC">${ite.count}  ${panduan.questionName}</p>
					<input type="radio" name="correct" class="options">对 &nbsp;
					<input type="radio" name="correct" class="options">错
				</div>
					<c:if test="${fn:startsWith(eflag, '1')}">
				            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <span style="color: red;">正确</span>
                            </label>
                  </c:if>
                  <c:if test="${fn:startsWith(eflag, '2')}">
				            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <span style="color: red;">错误 </span>
                            </label>
                  </c:if>
			</c:forEach>
			<div class="topicT">三、填空题（每空 2 分，共20分）</div>
			<c:forEach items="${tiankongList}" var="tiankong" varStatus="ite">
				<div class="topic">
					<p class="topicC">
						${ite.count}、 ${tiankong.questionName}
					</p>
				</div>
			</c:forEach>
			<div class="topicT">四、简答题（每题 15 分，共30分）</div>
			<c:forEach items="${jiandaList}" var="jianda" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count}、${jianda.questionName}</p>
					<textarea rows="10" cols="100"></textarea>
				</div>
			</c:forEach>
			<div class="topicT">五、算法设计题（每题 20 分，共20分）</div>
			<c:forEach items="${shejiList}" var="sheji" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count}、${sheji.questionName}</p>
					<textarea rows="10" cols="100"></textarea>
					<div>
						<label>请选择上传文件：</label> <input type="file" id="file_input"
							multiple />
					</div>
				</div>
			</c:forEach>
			<div class="test_paperBtn">
				<div class="paperBtn">重组</div>
				<div class="paperBtn">确认</div>
			</div>



</div>

                         <!--    <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <input  checked="checked" type="checkbox"  class="ace ace-switch ace-switch-6">
                                <span class="lbl middle"></span>
                            </label> -->
                            
                       <!--      <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <span style="color: red;">
                                    <input type="radio" name="correct1" class="options">对 &nbsp;
                                    <input type="radio" name="correct1" class="options">错
                                </span>
                            </label>
                            <br/> -->
 
                            

            </div>
        </div>
    </div>
</div>
</body>
</html>