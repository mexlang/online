<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 

    <meta name="description" content="Static &amp; Dynamic Tables">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<!-- css包 -->

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">
    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-fonts.css">
    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/my.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signin.css">


<!-- js包 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/js/ace.js"></script>
	<script src="${pageContext.request.contextPath}/js/ace.sidebar.js"></script>
	<script src="${pageContext.request.contextPath}/js/uibind.js"></script>
	<!-- 分页插件使用 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap-paginator.min.js"></script>



    <style>
        body{font-size: 15px;}
        .test_paper{width: 900px;height:auto;overflow:hidden;background-color:#F2F2F2;border: 1px solid greenyellow;}
        .test_paper .test_paperT{width: 100%;height:50px;line-height: 50px;text-align: center;font-size: 24px;font-weight: 700;margin-bottom: 20px;}
        .test_paper .topicT{width: 100%;height: 20px;line-height: 20px;font-size: 18px;}
        .test_paper .topic{width: 100%;height: auto;overflow: hidden;margin-bottom: 15px;}
        .test_paper .topic .topicC{width: 100%;height: auto;}
        .test_paper .topic .topicC .text{width: 100px;border-bottom:1px solid #797979;display: inline-block;}
        .test_paper .topic .topicC .text input{width: 100px;background-color:#F2F2F2;outline: none;border: 0;text-align: center;}
        .test_paper .topic .options{margin-top: 8px;}
        .test_paper .topic textarea{outline: none;background-color:#F2F2F2;}
        .test_paper .test_paperBtn{width: 100%;height: 30px;margin-top: 60px;margin-bottom:30px;}
        .test_paper .test_paperBtn .paperBtn{margin-left: 46%;width: 100px;height: 40px;line-height: 40px;text-align: center;font-weight: 700;background-color: #0b6cbc;color: #ffffff;border-radius: 5px;cursor: pointer;}
    </style>
			
			<!-- 下面为model的样式  -->
			
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