<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<title>成绩分析</title>
</head>
<body>
	<nav>
		<div class="testShow">
			<table>
				<tr bgcolor="#D7D7D7">
					<td>数据结构考试类型</td>
					<td>时间</td>
					<td>成绩</td>
					<td>分析</td>
				</tr>
				<c:forEach items="${onlineTestpapers}" var="testpaper"
					varStatus="ite">
					<tr>
						<td><a>${testpaper.pagerName}</a></td>
						<td>${testpaper.pagerStarttime}</td>
						<td class="ksBtn">${testpaper.examinInfor.studentTotalscope}</td>
						<td><a href="javascript:studenttoScore(${testpaper.paperId});">成绩分析</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</nav>
</body>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">

</script>