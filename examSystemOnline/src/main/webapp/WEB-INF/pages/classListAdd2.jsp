<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 教师端： 试卷批改 -->
<h2 style="text-align: center;">试卷批改</h2><br/>
                <table style="margin-top: 10px">
                    <tr>
                        <td class="tr_head" style="width:8%;">序号</td>
                        <td class="tr_head"  style="width:30%;">学生编号</td>
                        <td class="tr_head"  style="width:20%;">试卷编号</td>
                        <td class="tr_head"  style="width:12%;">批改状态</td>
                        <td class="tr_head"  style="width:30%;">试卷管理</td>
						</td>
                    </tr>

<c:choose>

<c:when test="${fn:length(resultList)>=1}">

	<c:forEach items="${resultList}" var="user" varStatus="ite">

	               <!-- 考试头信息的列表展示 -->        
          <c:set var="string" value="${user.examFlag}"/>
                 <c:if test="${fn:startsWith(string, '1')}">
			             <tr>
	                        <td>${ite.count}</td>
	                        <td>${user.studentId}</td>
	                        <td>${user.paperId}</td>
	                  		<td style="color: blue;">试卷已批改</td>
                       	    <td><a href="${pageContext.request.contextPath}/TestPaper/selectExamListInfo?studentId='${user.studentId}'&paperId='${user.paperId}'">点击查看</a></td>
	                    </tr><!-- http://localhost:8080/examSystemOnline/TestPaper/selectExamListInfo?studentId=2013030412&paperId=101010 -->
                 </c:if>
                 
                 <c:if test="${fn:startsWith(string, '0')}">
                 		<tr>
	                        <td>${ite.count}</td>
	                        <td>${user.studentId}</td>
	                        <td>${user.paperId}</td>
	                        <td style="color: red;">试卷未批改</td>
                        	<td><a href="${pageContext.request.contextPath}/TestPaper/selectExamListInfo?studentId='${user.studentId}'&paperId='${user.paperId}'">查看更多</a>
<!--                         	<a href="${pageContext.request.contextPath}/TestPaper/deleteTestPaperTitleInfo?paperId=${user.paperId}">删除</a> -->
                        	</td>
	                    </tr>
                 
                 </c:if>
	
	</c:forEach>

</c:when>

</c:choose>
                </table>