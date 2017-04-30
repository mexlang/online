<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
    
    <div class="mainRight">
        <nav class="nav">
            <!--欢迎进入数据结构考试系统！-->
            当前位置：<a href="xsdIndex.html" style="color: #00A0E9">首页</a><span><a class="historyTitle">&nbsp;>我要考试&nbsp;>正在考试</a></span>
        </nav>
        <div class="main-content">
            <div class="examMain-test">
                <div class="exam-time"><h2>${paperTest.pagerName}</h2><div class="exam-timeRight">考试时间：<span class="examTime">${paperTest.pagerTotaltime}</span></div></div>
                <div class="topicT">一、选择题（每题 2 分，共20分）</div>
			
			<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
				<div class="topic" >
					<p class="topicC">${ite.count} <c:out value="${xuanze.questionName}"></c:out> </p>
					<input type="radio" name="one" class="options">A.${xuanze.optionA}<br>
					<input type="radio" name="one" class="options">B.${xuanze.optionB}<br>
					<input type="radio" name="one" class="options">C.${xuanze.optionC}<br>
					<input type="radio" name="one" class="options">D.${xuanze.optionD}
				</div>
			</c:forEach>
			
			
			<div class="topicT">二、判断题（每题 2 分，共20分）</div>
			<c:forEach items="${panduanList}" var="panduan" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count}  ${panduan.questionName}</p>
					<input type="radio" name="correct" class="options">对 &nbsp;
					<input type="radio" name="correct" class="options">错
				</div>
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
                <div class="button">提交</div>
            </div>
        </div>
    </div>
<script src="js/jquery.min.js"></script>

</body>
</html>