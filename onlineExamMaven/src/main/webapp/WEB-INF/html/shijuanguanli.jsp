<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>试卷管理</title>
<jsp:include page="../common/topbase.jsp"></jsp:include>


</head>
<body class="no-skin">
<!-- 引入头部 -->
<jsp:include page="../common/head.jsp"></jsp:include>

<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../common/left.jsp"></jsp:include>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="${pageContext.request.contextPath}/indexindex">首页</a>
                    </li>
                    <li class="active">
                 <a href="${pageContext.request.contextPath}/shitiguanli">   
                    试卷管理
                    </a>
                    </li>
                    <li class="active">考试列表
					</li>
                </ul>
            </div>
            <a href="${pageContext.request.contextPath}/shijuanInfo" >
            <button style="margin:20px 25px;padding:7px 15px;">点击新建考试</button></a>
            <div class="page-content" id="tableAdd">

                <!-- 插入位置 -->
                
            </div>
        </div>
    </div>
</div>
<!-- model  -->


<div id="modal-overlay"> 
	<div class="modal-data">		
	    <p>一个很简单的模态对话框 </p>
	    <p>点击<a onclick="overlay()" href="">这里</a>关闭</p>
	</div>
</div>

<script type="text/javascript">
function overlay(){
	   var e1 = document.getElementById('modal-overlay');			
	   e1.style.visibility = (e1.style.visibility == "visible")? "hidden" : "visible";
	}
</script>

<!-- <a href="#" onclick="overlay()">显示模态对话框</a> -->
		
		<!-- model end -->		
</body>

<script type="text/javascript">

$(document).ready(function(){
	queryAllClassInfo();
});

/* 保存题号到数据库 */
function queryAllClassInfo(){
	
	  $.post("${pageContext.request.contextPath}/TestPaper/queryAllTestPaperTitleInfo",
			  {},
			  function(data){
		  $("#tableAdd").empty().html(data);
	  });
}
/* 删除 */
function deleteTestPaperTitleInfo(paperId) {
	$.post("${pageContext.request.contextPath}/TestPaper/deleteTestPaperTitleInfo",
			{
		paperId:paperId
			},
			function(data){
				queryAllClassInfo();
	});
}
</script>
</html>