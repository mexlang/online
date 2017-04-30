<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<h2 style="text-align: center;">当前考试信息</h2><br/>
                <table style="margin-top: 10px">
                    <tr>
                        <td class="tr_head" style="width:5%;">序号</td>
                        <td class="tr_head"  style="width:35%;">考试名称</td>
                        <td class="tr_head"  style="width:20%;">试卷编号</td>
                        <td class="tr_head"  style="width:10%;">班级编号</td>
                        <td class="tr_head"  style="width:10%;">审核状态</td>
                        <td class="tr_head"  style="width:20%;">考试信息管理</td>
						</td>
                    </tr>

<c:choose>

<c:when test="${fn:length(resultList)>=1}">

	<c:forEach items="${resultList}" var="user" varStatus="ite">

	               <!-- 考试头信息的列表展示 -->        
          <c:set var="string" value="${user.pagerFlag}"/>
                 <c:if test="${fn:startsWith(string, '1')}">
			             <tr>
	                        <td>${ite.count}</td>
	                        <td>${user.pagerName}</td>
	                        <td>${user.paperId}</td>
	                        <td>${user.teacherId}</td>
	                  		<td style="color: blue;">审核通过</td>
                       	    <td><a href="${pageContext.request.contextPath}/TestPaper/queryTestpaperTitleInfo?paperId=${user.paperId}">点击查看</a></td>
	                    </tr>
                 </c:if>
                 
                 <c:if test="${fn:startsWith(string, '0')}">
                 		<tr>
	                        <td>${ite.count}</td>
	                        <td>${user.pagerName}</td>
	                        <td>${user.paperId}</td>
	                        <td>${user.teacherId}</td>
	                        <td style="color: gray;">未审核</td>
                        	<td><a href="${pageContext.request.contextPath}/TestPaper/queryTestpaperTitleInfo?paperId=${user.paperId}">查看更多</a>
                        	<a onclick="deleteTestPaperTitleInfo('${user.paperId}');">删除</a>
<!--                         	<a href="${pageContext.request.contextPath}/TestPaper/deleteTestPaperTitleInfo?paperId=${user.paperId}">删除</a> -->
                        	</td>
	                    </tr>
                 
                 </c:if>
                 
                   <c:if test="${fn:startsWith(string, '2')}">
                 		<tr>
	                        <td>${ite.count}</td>
	                        <td>${user.pagerName}</td>
	                        <td>${user.paperId}</td>
	                        <td>${user.teacherId}</td>
	                        <td style="color: red">未通过</td>
                        	<td><a href="${pageContext.request.contextPath}/TestPaper/queryTestpaperTitleInfo?paperId=${user.paperId}">点击修改</a></td>
	                    </tr>
                 
                 </c:if>
	
	</c:forEach>

</c:when>

</c:choose>
                </table>