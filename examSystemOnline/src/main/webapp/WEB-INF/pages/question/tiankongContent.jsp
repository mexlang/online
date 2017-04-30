<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${fn:length(userList)>=1}">
		<c:forEach var="list" items="${userList}">
			<div id="${list.questionId}bkuser_delete">
				<ul
					style="list-style: none;margin:0;padding: 5px 10px;background-color: #F7F7F7;">
					<li>编号：${list.questionId }</li>
					<li>1.选择2.填空3.判断4.简答5.设计:${list.questionType}</li>
					<li>章节:${list.questionChater}</li>
					<li>难度：${list.questionDifficulty}</li>
					<li>日期：${list.questionCreatetime}</li>
				</ul>
				<div style="width:100%;height: auto;padding-top: 5px;">
					<div style="margin-left: 10px;font-size: 15px;">
						<div style="width:100%;">
							<span style="margin-left: 0;">【题文】</span> <span
								style="margin-left: 85%;font-size: 12px">
								<button class="revise" onclick="javascript:forUpdateBlank(${list.questionId});"
									style="background-color:#20C891;border-radius: 5px;color:white;outline: none;">修改</button>
								<button class="delete" onclick="javascript:deleteChoice(${list.questionId});"
									style="background-color:red;border-radius: 5px;color:white;outline: none;">删除</button>
							</span>
						</div>
						<form action="" method="get"
							style="text-indent: 2em;line-height: 25px;margin-top: 5px;">
							${list.questionName}<br />
						</form>
					</div>
					<div style="width:100%;">
						<span>&nbsp;&nbsp;&nbsp;&nbsp;答案：</span>
						<textarea cols="60" rows="2" name="title">${list.questionAnswer}</textarea>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:when>
	<c:otherwise>  对不起  暂无数据！ </c:otherwise>
</c:choose>
