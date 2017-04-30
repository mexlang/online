<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


                <table style="margin-top: 10px">
                    <tr class="tr_head">
                        <td style="width:40%;">试卷编号</td>
                        <td style="width:40%;">试卷题目</td>
                        <td style="width:20%;">管理</td>
                    </tr>

<c:choose>

<c:when test="${fn:length(classList)>=1}">

	<c:forEach items="${resultList}" var="user" varStatus="ite">
                 		<tr>
	                        <td>${user.pagerName}</td>
	                        <td>${user.paperId}</td>
                        	<td><a href="${pageContext.request.contextPath}/shijuanInfo?${user.paperId}">设置为试卷</a></td>
	                    </tr>
	</c:forEach>

</c:when>

</c:choose>

                </table>