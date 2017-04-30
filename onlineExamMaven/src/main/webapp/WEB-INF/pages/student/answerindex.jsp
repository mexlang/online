<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="mainRight">
	
	<div class="main-content">
		<div class="examMain-test">
		<div class="exam-time">
					<h2>${paperTest.pagerName}</h2>
				</div>
				<div class="topicT">一、选择题（每题 2 分，共20分）</div>

				<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
					<div class="topic" id="question${xuanze.questionId}">
						<p class="topicC">${ite.count}
							<c:out value="${xuanze.questionName}"></c:out>
						</p>
						<input type="radio" name="one" value="A"
							class="options" onclick="AJAXOptions(${xuanze.questionId},'A');">A.${xuanze.optionA}<br> <input
							type="radio" name="one" value="B"
							class="options" onclick="AJAXOptions(${xuanze.questionId},'B');">B.${xuanze.optionB}<br> <input
							type="radio" name="one" value="C"
							class="options" onclick="AJAXOptions(${xuanze.questionId},'C');">C.${xuanze.optionC}<br> <input
							type="radio" name="one" value="D"
							class="options" onclick="AJAXOptions(${xuanze.questionId},'D');">D.${xuanze.optionD}
						<input type="text" name="answer" value="${xuanze.questionAnswer}"/>
					</div>
					
				</c:forEach>


				<div class="topicT">二、判断题（每题 2 分，共20分）</div>
				<c:forEach items="${panduanList}" var="panduan" varStatus="ite">
					<div class="topic">
						<p class="topicC">${ite.count}${panduan.questionName}</p>
						<input type="text" name="answer" value="${panduan.questionAnswer}"/>
					</div>
				</c:forEach>
				<div class="topicT">三、填空题（每空 2 分，共20分）</div>
				<c:forEach items="${tiankongList}" var="tiankong" varStatus="ite">
					<div class="topic" >
						<p class="topicC">${ite.count}、 ${tiankong.questionName}</p>
						<input type="text" name="answer" value="${tiankong.questionAnswer}"/>
					</div>
				</c:forEach>
				<div class="topicT">四、简答题（每题 15 分，共30分）</div>
				<c:forEach items="${jiandaList}" var="jianda" varStatus="ite">
					<div class="topic">
						<p class="topicC">${ite.count}、${jianda.questionName}</p>
						<input type="text" name="answer" value="${jianda.questionAnswer}"/>
					</div>
				</c:forEach>
				<div class="topicT">五、算法设计题（每题 20 分，共20分）</div>
				<c:forEach items="${shejiList}" var="sheji" varStatus="ite">
					<div class="topic">
						<p class="topicC">${ite.count}、${sheji.questionName}</p>
						<input type="text" name="answer" value="${sheji.questionAnswer}"/>
					</div>
				</c:forEach>
				
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
