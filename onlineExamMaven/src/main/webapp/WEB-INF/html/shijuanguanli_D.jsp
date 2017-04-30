<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>试卷管理--设置</title>
    <jsp:include page="../common/topbase.jsp"></jsp:include>


<style type="text/css">
    #loading{position:fixed;_position:absolute;top:50%;left:50%;width:120px;height:120px;overflow:hidden;background:url(images/loading.gif) no-repeat;z-index:10;display:none;}
</style>



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
<!-- 新建试卷 -->
            <form action="${pageContext.request.contextPath}/TestPaper/insertTestpaperTitleInfo" method="post">
            <div class="page-content" id="loadding">
                <ul class="she_ul" style="">
                    <li>考试名称：<input type="text" class="shuru" name="pagerName">
                    </li>
                    <li>试卷编号：<input type="text" class="shuru" id=shijuanmodal name="TestNumber"   placeholder="点击此处选择试卷：" ></li>
                    <li>考试班级：<input type="text" class="shuru" id="banjimodal" placeholder="点击此处选择班级：" ></li>
                    <li>考试时间：<input type="date" class="shuru" name="StartTime1"> <input type="datetime" class="shuru" placeholder="请填写开考时间(例如：8:00)"  name="StartTime2"></li>
                    <li>结束时间：<input type="date" class="shuru"  name="EndTime1"> <input type="datetime" class="shuru" placeholder="请填写结束时间(例如：8:00)" name="EndTime2"> </li>
                    <li>考试时长：<input type="number" class="shuru" name="pagerTotaltime"> 分钟</li>
                </ul>
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
					
					
            <div id="tableInsert" class="page-content">
            
<!-- 表格插入的地方 -->
            
            
            
            </div>
             <div  style="margin-left:800px">
                <input class="button_sheng" type="submit" value="完成">
            </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">

$(document).ready(function(){
	$("#shijuanmodal").click(function(){       //通过点击文本框触发模态框
		queryAllPaperIdInfo();
	});
});

$(document).ready(function(){
	$("#banjimodal").click(function(){			 //通过点击文本框触发模态框
		queryAllClassInfo();
	});
});
var loading="<img src='${pageContext.request.contextPath}/images/tb/lloading.gif' style='width: 25px;height: 25px;'>正在查询，请稍等．．．";
/* 查询所有班级 */
function queryAllClassInfo(){
	
		  overlay();
		  $("#modaldatainsert").append(loading);
	  $.post("${pageContext.request.contextPath}/class/queryAllClassInfo",{},
			  function(data){
		  $("#modaldatainsert").empty().html(data);
	  });
}

/* 	查询所有组卷  */
function queryAllPaperIdInfo(){
		  overlay();
	$("#modaldatainsert").append(loading);
	  $.post("${pageContext.request.contextPath}/TestPaper/queryonlineTestpaperByGroup",{},
			  function(data){
		  $("#modaldatainsert").empty().html(data);
	  });
}


/* 保存试卷Id */ 
function insertPaperIdIntoOnlineTestpaper(paperId){
	
	  $.post("${pageContext.request.contextPath}/TestPaper/insertPaperIdIntoOnlineTestpaper",{paperId:paperId},
			  function(data){
		  alert(data.message);
	  },"json");
}
/* 保存班级Id */ 
function saveTestpaperAndClass(classId){
	
	  $.post("${pageContext.request.contextPath}/TestPaper/saveTestpaperAndClass",{classId:classId},
			  function(data){
		  alert(data.message);
	  },"json");
}
</script>
</html>