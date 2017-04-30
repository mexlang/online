<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<tr bgcolor="#D7D7D7">
	<td>数据结构考试</td>
	<td>考试开始时间</td>
	<td>考试结束时间</td>
	<td>本次考试总时间</td>
	<td>操作</td>
</tr>
<c:choose>
	<c:when test="${fn:length(userList)>=1}">
		<c:forEach items="${userList}" var="student" varStatus="ite">
			<tr>
				<td><a>${student.pagerName}</a></td>
				<td>${student.pagerStarttime}</td>
				<td>${student.pagerEndtime}</td>
				<td>${student.pagerTotaltime}</td>
				<td class="ksBtn"><a
					href="javascript:studnetToExam(${student.paperId});">进入考试</a></td>
			</tr>

		</c:forEach>
	</c:when>
	<c:otherwise>  对不起  暂无数据！ </c:otherwise>
</c:choose>