<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 

               <c:forEach items="${resultList}" var="result" varStatus="ites">
                    <tr>
                    <td hidden="hidden">${result.id}</td>
                    <td>${ites.count}</td>
                    <td>${result.paperId}</td>
                    <td>${result.studentId}</td>
                    <td>${result.studentName}</td>
                    <td>${result.studentTotalscope}</td>

                    <td><button data-toggle="modal" data-target="#myModal" onclick="chengjibaogao('${result.id}');">生成成绩报告</button></td>
                    </tr>
                    </c:forEach>
                  <%--  <c:set var="paperId" scope="page" value="${result.paperId}"/>
                    <c:set var="studentTotalscope" scope="page" value="${result.studentTotalscope}"/> --%>
<script type="text/javascript">

function chengjibaogao(infoId) {
	$.post("${pageContext.request.contextPath}/ManagerStudent/studentExamAnalyze",
			{infoId:infoId},
			function(data){
				$("#insertchengjifenxi").empty().append(data);
			});
}


</script>   
                    
