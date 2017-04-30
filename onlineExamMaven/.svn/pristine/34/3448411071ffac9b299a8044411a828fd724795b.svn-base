<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



            
 <p>点击<a onclick="overlay()" href="">这里</a>关闭</p>
 <div class="test_paper" style="">
                    <div class="test_paperT">试卷预览</div>
            
			<div class="topicT">一、选择题（每题 2 分，共20分）</div>
			<c:choose>
	<c:when test="${fn:length(xuanzeList)>=1}">
			<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count} <c:out value="${xuanze.questionName}"></c:out> </p>
					<input type="radio" name="one" class="options">A.${xuanze.optionA}<br>
					<input type="radio" name="one" class="options">B.${xuanze.optionB}<br>
					<input type="radio" name="one" class="options">C.${xuanze.optionC}<br>
					<input type="radio" name="one" class="options">D.${xuanze.optionD}
				</div>
			</c:forEach>
</c:when>
</c:choose>
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
			<div class="test_paperBtn">
			<a onclick="overlay()" href="">
			<div class="paperBtn">确认</div>
			</a>
			</div>



</div>
