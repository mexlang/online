<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>试卷审核</title>
<jsp:include page="../../common/guanliyuan/topbase.jsp"></jsp:include>
    <style>

    </style>
</head>
<body>
<!--头部-->
<jsp:include page="../../common/guanliyuan/head.jsp"></jsp:include>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../../common/guanliyuan/left.jsp"></jsp:include>
<!-- 上部导航 -->
    <div class="main-content" style="margin-top: 0px">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"> > 试卷审核</li>
                </ul>
            </div>
            <div class="page-content" style="padding: 0 ;height: auto;overflow: hidden">
                <div class="examMain-test">
                    <div class="exam-time"><h2>试卷审核--详情</h2></div>
     
       <div class="title">一、选择题（每题 2 分，共20分）</div>
			<c:choose>
	<c:when test="${fn:length(xuanzeList)>=1}">
			<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
				<div class="title">
					<p class="title">${ite.count} <c:out value="${xuanze.questionName}"></c:out> </p>
					<input type="radio" name="one" class="options">A.${xuanze.optionA}<br>
					<input type="radio" name="one" class="options">B.${xuanze.optionB}<br>
					<input type="radio" name="one" class="options">C.${xuanze.optionC}<br>
					<input type="radio" name="one" class="options">D.${xuanze.optionD}
				</div>
			</c:forEach>
</c:when>
</c:choose>
			<div class="title">二、判断题（每题 2 分，共20分）</div>
			<c:forEach items="${panduanList}" var="panduan" varStatus="ite">
				<div class="title">
					<p class="title">${ite.count}  ${panduan.questionName}</p>
					<input type="radio" name="correct" class="options">对 &nbsp;
					<input type="radio" name="correct" class="options">错
				</div>
			</c:forEach>
			<div class="title">三、填空题（每空 2 分，共20分）</div>
			<c:forEach items="${tiankongList}" var="tiankong" varStatus="ite">
				<div class="title">
					<p class="title">
						${ite.count}、 ${tiankong.questionName}
					</p>
				</div>
			</c:forEach>
			<div class="title">四、简答题（每题 15 分，共30分）</div>
			<c:forEach items="${jiandaList}" var="jianda" varStatus="ite">
				<div class="title">
					<p class="title">${ite.count}、${jianda.questionName}</p>
					<textarea rows="10" cols="100"></textarea>
				</div>
			</c:forEach>
			<div class="title">五、算法设计题（每题 20 分，共20分）</div>
			<c:forEach items="${shejiList}" var="sheji" varStatus="ite">
				<div class="title">
					<p class="title">${ite.count}、${sheji.questionName}</p>
					<textarea rows="10" cols="100"></textarea>
					<div>
						<label>请选择上传文件：</label> <input type="file" id="file_input"
							multiple />
					</div>
				</div>
			</c:forEach>
                        
                        
                        
                    </div>
                    <a href="${pageContext.request.contextPath}/TestPaper/updataTestpaperTitleInfo?paperId=${paperId}&pagerFlag=1">
                    <div class="button">审核通过</div>
                    </a>
                    <a href="${pageContext.request.contextPath}/TestPaper/updataTestpaperTitleInfo?paperId=${paperId}&pagerFlag=2">
                    <div class="button">不通过</div>
                    </a>
                </div>
            </div>
        </div>
    </div>

<!--底部-->
<footer>

</footer>
<script src="js/jquery.min.js"></script>
<!--<script src="js/select.js"></script>-->
<script>
    //   侧边点击隐藏
    $(function() {
        $(".mainLeft-tab  li").click(function () {
            $(".mainLeft-tab  li").each(function () {
                $(this).removeClass("active");
            });
            var dataV=$(this).attr("data-value");
            $(".main-content").load(dataV+".html");
            var historyTitle=$(this).children().html();
            $(".historyTitle").html("&nbsp;>&nbsp;"+historyTitle);
            $(this).toggleClass("active");
        });
    });
</script>
</body>
</html>