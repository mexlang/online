<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教师信息</title>
<jsp:include page="../common/guanliyuan/topbase.jsp"></jsp:include>
 

	<style>/* 定义模态对话框外面的覆盖层样式 */
		#modal-overlay {
		     visibility: hidden;    
		     position: absolute;   /* 使用绝对定位或固定定位  */
		     left: 0px;    
		     top: 0px;
		     width:100%;
		     height:100%;
		     text-align:center;
		     z-index: 1000;
		     background-color: #333; 
		     opacity: 0.7;   /* 背景半透明   0.5*/
		}
		/* 模态框样式 */
		.modal-data{
			 width:900px;
		     margin: 100px auto;
		     background-color: #fff;
		     border:1px solid #000;
		     padding:15px;
		     text-align:center;
		}</style>


<style id="style-1-cropbar-clipper">

.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style>



</head>
<body>
<!--头部-->
<jsp:include page="../common/guanliyuan/head.jsp"></jsp:include>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../common/guanliyuan/left.jsp"></jsp:include>
<!-- 上部导航 -->
    <div class="main-content" style="margin-top: 0px">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"> > 教师管理</li>
                </ul>
            </div>
            
            
            <div class="page-content" style="padding: 0">
                
                			       <!-- model  -->
			<div id="modal-overlay"> <!-- 一个很简单的模态对话框 -->
				<div class="modal-data">		
<!-- 				    <p>点击<a onclick="overlay()" href="">这里</a>关闭</p> -->
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
			<!-- model  end -->
                
                
                    <div class="alter">
                    <form method="post" action="${pageContext.request.contextPath}/ManagerTeacher/updataTeacherInfo" id="formStudent">
                        <div class="setInput"><span>姓名</span><input type="text" value="${teacher.teacherName}" name="teacherName"></div>
                        <div class="setInput"><span>登录名</span><input type="text" value="${teacher.teacherNickname}" name="teacherNickname"></div>
                        <div class="setInput"><span>密码</span><input type="text" value="${teacher.teacherPasswd}" name="teacherPasswd"></div>
                        <div class="setInput"><span>性别</span><input type="text" value="${teacher.teacherSex}" name="teacherSex"></div>
                        <div class="setInput"><span>电话</span><input type="text" value="${teacher.teacherPhone}" name="teacherPhone"></div>
                        <input class="btn1 que" type="submit" value="确定"> 
                        <a href="${pageContext.request.contextPath}/ManagerTeacher/queryTeacher">
                        <input type="button" value="取消" class="btn1 que">
                        </a>
                        
                       
                        </form>
                    </div>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

function updataTeacher(){
	$.post("${pageContext.request.contextPath}/ManagerTeacher/updataTeacherInfo",
			$("form").serialize(),
	function(data){
		
// 		$("#modaldatainsert").empty().html(data);
// 		overlay();
	});
}


</script>
</body>
</html>