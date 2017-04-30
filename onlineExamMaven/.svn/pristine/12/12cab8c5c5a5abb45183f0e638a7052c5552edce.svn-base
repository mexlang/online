<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 
<html>
<head>
<title> 正在查询，请稍等... </title>


<style type="text/css">
.query_hint{
 border:5px solid #939393;
 width:250px;
 height:50px;
 line-height:55px;
 padding:0 20px;
 position:absolute;
 left:50%;
 margin-left:-140px;
 top:50%;
 margin-top:-40px;
 font-size:15px;
 color:#333;
 font-weight:bold;
 text-align:center;
 background-color:#f9f9f9;
}
.query_hint img{position:relative;top:10px;left:-8px;}
</style>
 </head>



 <div id="query_hint" class="query_hint">
    <img src="http://static.oschina.net/uploads/space/2014/0430/115223_oFLD_1163935_thumb.gif" />正在查询，请稍等．．．
</div>



<script src="http://www.oschina.net/js/2012/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
//页面加载完成之后去掉Loading
$(document).ready(function(){
    parent.frames[0].queryHintCallback("query_hint");
});

/**
 * @description  * 显示查询等待层
 * @param query_hint
 */
function show_query_hint(query_hint){
    var query_hint = document.getElementById(query_hint);
    query_hint.style.display="block";
}

/**
 * @description 查询结果回调函数
 * @param query_hint 要隐藏的提示层id
 */
function queryHintCallback(query_hint){
    var query_hint = document.getElementById(query_hint);
    query_hint.style.display="none";
}
</script>

