<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<br/>
<span style="font-size: 18px;">学生编号：</span><span style="font-size: 18px;">${studentId}</span><br/><br/>
<span style="font-size: 15px;">本次考试编号：</span><span>${paperId}</span><br/>
<span style="font-size: 15px;">本次考试分数：</span><span style="font-size: 18px;border-top-color: red;">${studentTotalScope}</span><br/>
<span style="font-size: 15px;">试卷设置难度：</span><span>容易</span><br/>
<span style="font-size: 15px;">本次考试总人数：</span><span>${examPeopleCount}</span><br/>
<span style="font-size: 15px;">本次考试平均分：</span><span>${average}</span>
<span></span>
<br/>
<br/>
<input  type="button" class="btn btn-primary btn-lg" data-dismiss="modal" value="审核通过" onclick="setFlage('1');">
<input type="button" class="btn btn-default" data-dismiss="modal" value="不通过" onclick="setFlage('2');"><br/>
<input type="text" value="审核不通过，请说明原因：">
<input id="infoId" value="${id}" hidden="hidden">
<script type="text/javascript">
var infoId = $("#infoId").val();
function setFlage(flag) {
	$.post("${pageContext.request.contextPath}/ManagerStudent/setFlag",
			{flag:flag,
		infoId:infoId},
			function(data){
			});
}



</script>