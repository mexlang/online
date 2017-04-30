<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	request.setAttribute("student", path);
%>

<div class="mainRight">
	
	<div class="main-content">
		<div class="examMain-test">
				<div class="exam-time">
					<h2>${paperTest.pagerName}</h2>
					<div class="exam-timeRight">
						考试时间：<span class="examTime">${paperTest.pagerTotaltime}</span>
					</div>
				</div>
				<div class="topicT">一、选择题（每题 2 分，共20分）</div>

				<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
					<div class="topic" id="question${xuanze.questionId}">
						<p class="topicC">${ite.count}
							<c:out value="${xuanze.questionName}"></c:out>
						</p>
						<input type="radio" name="one${ite.count}" value="A"
							class="options" onclick="AJAXOptions(${paperTest.paperId},${xuanze.questionId},'A');">A.${xuanze.optionA}<br> <input
							type="radio" name="one${ite.count}" value="B"
							class="options" onclick="AJAXOptions(${paperTest.paperId},${xuanze.questionId},'B');">B.${xuanze.optionB}<br> <input
							type="radio" name="one${ite.count}" value="C"
							class="options" onclick="AJAXOptions(${paperTest.paperId},${xuanze.questionId},'C');">C.${xuanze.optionC}<br> <input
							type="radio" name="one${ite.count}" value="D"
							class="options" onclick="AJAXOptions(${paperTest.paperId},${xuanze.questionId},'D');">D.${xuanze.optionD}
					</div>
				</c:forEach>


				<div class="topicT">二、判断题（每题 2 分，共20分）</div>
				<c:forEach items="${panduanList}" var="panduan" varStatus="ite">
					<div class="topic">
						<p class="topicC">${ite.count}${panduan.questionName}</p>
						<input type="radio" name="correct${ite.count}" value="对" class="options" onclick="AJAXOptions(${paperTest.paperId},${panduan.questionId},'1');">对
						&nbsp; <input type="radio" name="correct${ite.count}" value="错" class="options" onclick="AJAXOptions(${paperTest.paperId},${panduan.questionId},'0');">错
					</div>
				</c:forEach>
				<div class="topicT">三、填空题（每空 2 分，共20分）</div>
				<c:forEach items="${tiankongList}" var="tiankong" varStatus="ite">
					<div class="topic" >
						<p class="topicC">${ite.count}、 ${tiankong.questionName}</p>
						<input type="text" name="tiankongAnswer"
							id="tiankong${ite.count}" iteId="${tiankong.questionId}">
					</div>
				</c:forEach>
				<div class="topicT">四、简答题（每题 15 分，共30分）</div>
				<c:forEach items="${jiandaList}" var="jianda" varStatus="ite">
					<div class="topic">
						<p class="topicC">${ite.count}、${jianda.questionName}</p>
						<input type="text" name="jiandaAnswer"
						 id="jianda${ite.count} " iteId="${jianda.questionId}">
					</div>
				</c:forEach>
				<div class="topicT">五、算法设计题（每题 20 分，共20分）</div>
				<c:forEach items="${shejiList}" var="sheji" varStatus="ite">
					<div class="topic">
						<p class="topicC">${ite.count}、${sheji.questionName}</p>
						<input type="text" name="shejiAnswer"
						 id="sheji${ite.count}" iteId="${sheji.questionId}">
						<div>
							<label>请选择上传文件：</label> <input type="file" id="file_input${ite.count}" iteId="${sheji.questionId}"
							name="shejiphoto"	multiple />
						</div>
					</div>
				</c:forEach>
				<button id="submit" type="button" onclick="checkpaper(${tiankongsize},${jiandasize},${shejisize},${paperTest.paperId});"
						style="margin-left: 45%">提交</button>
		</div>
	</div>
</div>
<script src="${student}/js/jquery.min.js"></script>
<script type="text/javascript">
   
function AJAXOptions(paperId,questionId,value){
	
	$.post("${pageContext.request.contextPath}/studentPaper/stuentwritePaper",
			{
			  paperId:paperId,
			  questionId:questionId,
			  value : value
			}
	)
	}

function checkpaper(tiankongsize,jiandasize,shejisize,paperId){
	for(var i=1;i<=tiankongsize;i++){
		var tiankong = $("#"+"tiankong"+i).val();
		var tiankongid = $("#"+"tiankong"+i).attr("iteId");
		$.post("${pageContext.request.contextPath}/studentPaper/stuenttinakongAnswer",
				{
			tiankong :tiankong,tiankongid:tiankongid,paperId:paperId
			}
	)
	}
	for(var i=1;i<=jiandasize;i++){
		var jianda = $("#"+"jianda"+i).val();
		var jiandaid = $("#"+"jianda"+i).attr("iteId");
		$.post("${pageContext.request.contextPath}/studentPaper/stuentjiandaAnswer",
				{
			jianda :jianda,jiandaid:jiandaid,paperId:paperId
			}
	)
	
	}
	for(var i=1;i<=shejisize;i++){
	var sheji = $("#"+"sheji"+i).val();
	var file = $("#"+"file_input"+i).val();
	var shejiid = $("#"+"sheji"+i).attr("iteId");
	$.post("${pageContext.request.contextPath}/studentPaper/stuentshejiAnswer",
			{
		sheji :sheji,shejiid:shejiid,file:file,paperId:paperId
		}
)
	}
	$.post("${pageContext.request.contextPath}/studentPaper/saveSucess",
			
		function(data){
			if(data==1){
				alert("保存成功");
			}
	});
	
}
   
    </script>

