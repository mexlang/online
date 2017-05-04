<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>自动组卷</title>
    <jsp:include page="../common/topbase.jsp"></jsp:include>
    
</head>
<body class="no-skin">
<!--头部-->
<div id="navbar" class="navbar navbar-default">
    <div id="navbar-container" class="navbar-container">
        <button id="menu-toggler" class="navbar-toggle menu-toggler pull-left" type="button" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a class="navbar-brand" href="#">
                <small>
                    <!--<i class="fa fa-leaf"></i>-->
                    <img src="${pageContext.request.contextPath}/images/tb/kaoshi.png" style="width: 25px;height: 25px;">
                    数据结构在线考试系统<span style="font-size: 12px">——教师端</span>
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/avatars/avatar2.png" alt="Jack's photo">
                            <span class="user-info">
                                <small>Welcome,</small>
                                王老师
                            </span>
                        <!--<i class="ace-icon fa fa-caret-down"></i>-->
                    </a>
                </li>
                <li class="light-blue">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        退出
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
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
                    <li class="active">自动组卷</li>
                </ul>
            </div>

            <!--新建按钮-->
            <div class="page-content" id="btn">
                <h2>进入自动组卷之前首先需要新建一个试卷</h2>
                <input type="button" value="新建试卷" id="new_btn">
            </div>
            <!--新建试卷-->
            <div class="page-content" id="text" style="display: none;">
                <form action="" method="">
                    试卷名称：<input type="text" id="pagerName" class="txt" style="width: 240px;" placeholder="请在此输入本次试卷的名称...">
                    <br><br>
                    试卷编号：<input type="text" id="paperId">
                    <br><br>
                    难度：<select name="usercity" id="paperDifficulty">
                    <option value="jd">简单</option>
                    <option value="yb">一般</option>
                    <option value="kn" selected>困难</option>
                </select>
                    <br><br>
                    考试类型：<label><input name="Lei" type="radio" value="" id="Zhang">章节测试 </label>
                                <span style="display: none" id="XuanZhang">
                                    第
                                    <select style="height: 25px;">
                                        <option>一</option>
                                        <option>二</option>
                                        <option>三</option>
                                        <option>四</option>
                                        <option>五</option>
                                        <option>六</option>
                                    </select>
                                    章
                                </span>&nbsp;
                    <label><input name="Lei" class="qi" type="radio" value="">期中考试 </label>&nbsp;
                    <label><input name="Lei" class="qi" type="radio" value="" checked>期末考试 </label>&nbsp;
                    <br><br>
                    组卷类型：<label><input name="TestZujuan" class="qi" type="radio" value="" checked>自动组卷 </label>&nbsp;
                    <!--<label><input name="zj" class="qi" type="radio" value="" checked>手工组卷 </label>-->
                    <br><br><br>
                    <a onclick="InsertTestpaperWithHand();"><input type="button" value="确定" id="new_text"></a>
                </form>
            </div>
            <!--自动组卷-->
            <div class="page-content" id="type" style="margin: 0;padding: 0;display: none;">
                <div style="width:100%;height:auto;padding: 10px 30%;">
                    <ul class="zi_ul">
                        <li>
                            选择题型：
                            <div style="width: 80%;margin:-20px 80px">
                                <div>
                                    <span style="background-color: #5DD66C;color:white;height: 22px;width: 60px;display: inline-block;text-align: center;border-radius: 5px">
                                    选择题</span>：
                                    每个<input class="num" type="text">分，共
                                    <input class="jian" type="button" id="min1" value="-">
                                    <input class="num" id="text_num1" value="0">
                                    <input class="jian" type="button" id="max1" value="+"> 个
                                </div>
                                <div style="margin-top: 10px; ">
                                    <span style="background-color: #5DD66C;color:white;height: 22px;width: 60px;display: inline-block;text-align: center;border-radius: 5px">
                                    判断题</span>：
                                    每个<input class="num" type="text">分，共
                                    <input class="jian" type="button" id="min2" value="-">
                                    <input class="num" id="text_num2" value="0">
                                    <input class="jian" type="button" id="max2" value="+"> 个
                                </div>
                                <div style="margin-top: 10px; ">
                                    <span style="background-color: #5DD66C;color:white;height: 22px;width: 60px;display: inline-block;text-align: center;border-radius: 5px">
                                    填空题</span>：
                                    每个<input class="num" type="text">分，共
                                    <input class="jian" type="button" id="min3" value="-">
                                    <input class="num" id="text_num3" value="0">
                                    <input class="jian" type="button" id="max3" value="+"> 个
                                </div>
                                <div style="margin-top: 10px; ">
                                    <span style="background-color: #5DD66C;color:white;height: 22px;width: 60px;display: inline-block;text-align: center;border-radius: 5px">
                                    简答题</span>：
                                    每个<input class="num" type="text">分，共
                                    <input class="jian" type="button" id="min4" value="-">
                                    <input class="num" id="text_num4" value="0">
                                    <input class="jian" type="button" id="max4" value="+"> 个
                                </div>
                                <div style="margin-top: 10px; ">
                                    <span style="background-color: #5DD66C;color:white;height: 22px;width: 80px;display: inline-block;text-align: center;border-radius: 5px">
                                    算法设计题</span>：
                                    每个<input class="num" type="text">分，共
                                    <input class="jian" type="button" id="min5" value="-">
                                    <input class="num" id="text_num5" value="0">
                                    <input class="jian" type="button" id="max5" value="+"> 个
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div  style="text-align: center;margin-top: 40px;">
                    <a style="" href="text.jsp">
                        <button class="button_sheng" type="button" onclick="javascript:AutomaticTestPaper();">生成试卷</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $("#Zhang").click(function(){
        $("#XuanZhang").css("display","");
    });
    $(".qi").click(function(){
        $("#XuanZhang").css("display","none");
    });

    //    选择题数量添加
    $("#min1").click(function(){
        var a= $("#text_num1").val();
        if(a>0){
            a --;
            $("#text_num1").val(a);
        }else {

        }
    });
    $("#max1").click(function(){
        var a= $("#text_num1").val();
            a ++;
            $("#text_num1").val(a);
    });

//判断题数量添加
    $("#min2").click(function(){
        var a= $("#text_num2").val();
        if(a>0){
            a --;
            $("#text_num2").val(a);
        }else {

        }
    });
    $("#max2").click(function(){
        var a= $("#text_num2").val();
        a ++;
        $("#text_num2").val(a);
    });

//    填空题数量添加
$("#min3").click(function(){
    var a= $("#text_num3").val();
    if(a>0){
        a --;
        $("#text_num3").val(a);
    }else {

    }
});
$("#max3").click(function(){
    var a= $("#text_num3").val();
    a ++;
    $("#text_num3").val(a);
});
//    简答题数量添加
$("#min4").click(function(){
    var a= $("#text_num4").val();
    if(a>0){
        a --;
        $("#text_num4").val(a);
    }else {

    }
});
$("#max4").click(function(){
    var a= $("#text_num4").val();
    a ++;
    $("#text_num4").val(a);
});
//    算法设计题数量添加
$("#min5").click(function(){
    var a= $("#text_num5").val();
    if(a>0){
        a --;
        $("#text_num5").val(a);
    }else {

    }
});
$("#max5").click(function(){
    var a= $("#text_num5").val();
    a ++;
    $("#text_num5").val(a);
});

//    点击事件
    $("#new_btn").click(function(){
        $("#btn").hide();
        $("#text").show();
    });
    $("#new_text").click(function () {
        $("#text").hide();
        $("#type").show();
    });
</script>
<script type="text/javascript">
var pagerName;
var paperId = $("#paperId").val();
var paperDifficulty;
var TestType;
/* 新建组卷 */
function InsertTestpaperWithHand(){
			alert("提交中。。。");
	$.post("${pageContext.request.contextPath}/TestPaper/InsertTestpaperWithHand",
		{pagerName:$("#pagerName").val(),paperId:$("#paperId").val(),paperDifficulty:$("#paperDifficulty").val(),TestType:$("#zhang").val()},
			function(data){
			alert(data.paperId);
			
	},"json");
}
function AutomaticTestPaper(){
	$.post("${pageContext.request.contextPath}/TestPaper/AutomaticTestPaper",
			{
		text_num1:$("#text_num1").val(),
		text_num2:$("#text_num2").val(),
		text_num3:$("#text_num3").val(),
		text_num4:$("#text_num4").val(),
		text_num5:$("#text_num5").val(),
		paperId :$("#paperId").val()
		},
				function(data){
				if(data==1){
					alert("组卷成功");
				}
				alert("组卷失败");
		});
	}
</script>
</html>