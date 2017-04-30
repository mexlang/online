<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--判断题修改-->
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-hidden="true">&times;</button>
	<h4 class="modal-title" id="myModalLabel">判断题修改</h4>
</div>
<div class="modal-body">
	<div class="smart-widget widget-purple">
		<div class="smart-widget-inner">
			<div class="smart-widget-body">
				<form
					action="${pageContext.request.contextPath}/teacherChoice/updateDecideSystem"
					method="post">
					<input  type="hidden" name="decideUpdateId" id="decideUpdateId"  value="${onlineQuestions.questionId}"/>
					难度：<select name="questionDifficulty" id="decideUpdateDifficulty">
						<option value="简单"
							<c:if test="${onlineQuestions.questionDifficulty=='简单'}">selected="selected"</c:if>>简单</option>
						<option value="一般"
							<c:if test="${onlineQuestions.questionDifficulty=='一般'}">selected="selected"</c:if>>一般</option>
						<option value="困难"
							<c:if test="${onlineQuestions.questionDifficulty=='困难'}">selected="selected"</c:if>>困难</option>
					</select> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 章节:<select
						name="questionChater" id="decideUpdateChater">
						<option value="one"
							<c:if test="${onlineQuestions.questionChater=='one'}">selected="selected"</c:if>>一</option>
						<option value="two"
							<c:if test="${onlineQuestions.questionChater=='two'}">selected="selected"</c:if>>二</option>
						<option value="three"
							<c:if test="${onlineQuestions.questionChater=='three'}">selected="selected"</c:if>>三</option>
						<option value="four"
							<c:if test="${onlineQuestions.questionChater=='four'}">selected="selected"</c:if>>四</option>
						<option value="five"
							<c:if test="${onlineQuestions.questionChater=='five'}">selected="selected"</c:if>>五</option>
						<option value="six"
							<c:if test="${onlineQuestions.questionChater=='six'}">selected="selected"</c:if>>六</option>
					</select> <br /> 题目(可点击下面按钮上传图片)：
					<textarea cols="65" rows="3" name="questionName" id="decideUpdateName">${onlineQuestions.questionName}</textarea>
					<input type="file" multiple name="questionPhoto" id="decideUpdatePhoto"
						value="${onlineQuestions.questionPhoto}"> <br /> 答案：
					<textarea cols="60" rows="2" name="questionAnswer"
						id="decideUpdateAnswer">${onlineQuestions.questionAnswer}</textarea>
					<br>
				</form>
				<button id="submit" type="button" onclick="updateDecide();"
					style="margin-left: 45%">提交</button>
			</div>
		</div>
	</div>
</div>
