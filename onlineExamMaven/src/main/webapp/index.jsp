<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
  	<head>
	    <meta charset="utf-8">
	    <title>欢迎来到---在线考试系统--</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <!-- 需要引用的第三方css样式和js包 -->
  	</head>
  
 <body>
 <h1>hello!my world.</h1>

<a href="${pageContext.request.contextPath}/indexindex">返回首页</a>

<script type="text/javascript">
function countDown(secs,surl){
 //alert(surl);
 var jumpTo = document.getElementById('jumpTo');
 jumpTo.innerHTML=secs;
 if(--secs>0){
     setTimeout("countDown("+secs+",'"+surl+"')",1000);
     }
 else{
     location.href=surl;
     }
 }
</script>
</head>

<body>

<span id="jumpTo">5</span>秒后自动跳转到Swagger-UI
<script type="text/javascript">
countDown(5,'http://localhost:8080/examSystemOnline/swagger-ui.html');
</script>

</body>

</html>
