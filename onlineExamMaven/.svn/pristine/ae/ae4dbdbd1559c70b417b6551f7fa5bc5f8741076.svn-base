<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>试卷管理——查看</title>
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
                    <li class="active">试卷管理</li>
                </ul>
            </div>
            <div class="page-content"  id="clearDiv1">
               <ul class="she_ul" style="">
                   <li>考试名称：${result.pagerName}</li>
                   <li>试卷编号：${result.paperId}</li>
                   <li>考试班级：${result.teacherId}</li>
                   <li>试卷分值：${result.pagerScore}</li>
                   <li>考试时间：${result.pagerStarttime}</li>
                   <li>结束时间：${result.pagerEndtime}</li>
                   <li>考试时长：${result.pagerTotaltime}</li>
               </ul>
            </div>
            <div  style="text-align: center;margin-top: 40px;" id="clearDiv2">
                <a style="" onclick="toupdataTestpaperTitleInfo('${result.paperId}');"><input class="button_sheng" type="button" value="修改"></a>
                <a style="" href="${pageContext.request.contextPath}/shitiguanli"><input class="button_sheng" type="button" value="确定"></a>
            </div>
        </div>
    </div>
       <!-- model  -->

			<div id="modal-overlay"> <!-- 一个很简单的模态对话框 -->
				<div class="modal-data">		
				    <p>点击<a onclick="overlay()" href="">这里</a>关闭</p>
				    <div id="modaldatainsert">
				    
				    </div>
				    <p>点击<a onclick="overlay()" href="">这里</a>关闭</p>
				</div>
			</div>
			<script type="text/javascript">
			function overlay(){
				   var e1 = document.getElementById('modal-overlay');			
				   e1.style.visibility = (e1.style.visibility == "visible")? "hidden" : "visible";
				}
			</script>
			
<!-- 			<a href="#" onclick="overlay()">显示模态对话框</a> -->
					
<!-- model end -->
</div>
</body>
</html>
<script type="text/javascript">

$(document).ready(function(){
	$("#shijuanmodal1").click(function(){       //通过点击文本框触发模态框
		queryAllPaperIdInfo();
	});
});

$(document).ready(function(){
	$("#banjimodal1").click(function(){			 //通过点击文本框触发模态框
		queryAllClassInfo();
	});
});
/* 查询所有班级 */
function queryAllClassInfo(){
	
	  $.post("${pageContext.request.contextPath}/class/queryAllClassInfo",{},
			  function(data){
		  $("#modaldatainsert").empty().html(loading);
		  $("#modaldatainsert").empty().html(data);
		  overlay();
	  });
}

/* 	查询所有组卷  */
function queryAllPaperIdInfo(){
	
	  $.post("${pageContext.request.contextPath}/TestPaper/queryonlineTestpaperByGroup",{},
			  function(data){
		  $("#modaldatainsert").empty().html(data);
		  overlay();
	  });
}



function findpageofupdata(){
	
		$.get("${pageContext.request.contextPath}/showshijuanupdatainfo",function(data){
		$("#modaldatainsert").empty().html(data);
		overlay();
		  });
}

//返回更新页面,回显数据    上面的方法不回显数据
var paperId;
var loading="<div id='loading' class='loading'></div>";
function toupdataTestpaperTitleInfo(paperId){
	
				$("#clearDiv1").empty().append(loading);
				$("#clearDiv2").empty();
	$.post("${pageContext.request.contextPath}/TestPaper/toupdataTestpaperTitleInfo",
			{paperId:paperId},
	function(data){
		$("#modaldatainsert").empty().html(data);
		overlay();
	});
}

</script>