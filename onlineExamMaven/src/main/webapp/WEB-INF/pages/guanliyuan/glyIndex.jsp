<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
<jsp:include page="../../common/guanliyuan/topbase.jsp"></jsp:include>
</head>
<body>
<!--头部-->
<jsp:include page="../../common/guanliyuan/head.jsp"></jsp:include>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../../common/guanliyuan/left.jsp"></jsp:include>
<!-- 上部导航 -->
    <div class="main-content" style="margin-top: 0px">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"></li>
                </ul>
            </div>
            <div class="page-content" style="padding: 0">
 <!--首页主内容-->
                欢迎来到数据结构在线考试-管理员端
                    <!--<img src="img/background.jpg" width="100%" height="100%">-->
            </div>
        </div>
    </div>
</div>

<footer>

</footer>
<!--<script src="js/select.js"></script>-->
<script>
    //   侧边点击隐藏
    $(function() {
        $(".mainLeft-tab  li").click(function () {
            $(".mainLeft-tab  li").each(function () {
                $(this).removeClass("active");
            });
//            点击侧边导航栏
            var dataV=$(this).attr("data-value");
            $(".main-content").load(dataV+".html");
            var historyTitle=$(this).children().html();
            $(".historyTitle").html("&nbsp;>&nbsp;"+historyTitle);
            $(this).toggleClass("active");
        });
    });

</script>
</body>
</html>