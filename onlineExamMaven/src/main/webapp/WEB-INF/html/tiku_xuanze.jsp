<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>题库管理-选择题</title>
   <jsp:include page="../common/topbase.jsp"></jsp:include>

</head>
<body class="no-skin">
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
<jsp:include page="../common/left.jsp"></jsp:include>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="${pageContext.request.contextPath}/indexindex">首页</a>
                    </li>
                    <li class="">题库管理</li>
                    <li class="active">选择题</li>
                </ul>
            </div>
            <div class="page-content">
                <button class="add" onclick="$('#apple').show();" style="background-color: #2a91d8;color: #fff;height: 40px;outline: none;">添加选择题</button>
                <div class="bank" style="width:100%;height:auto;margin-top: 10px;">
                    <div style="width:100%;height:auto;border: 1px #CCCCCC solid">
                        <ul style="list-style: none;margin:0;padding: 5px 10px;background-color: #F7F7F7;">
                            <li>编号：123456</li>
                            <li>类型：<font>选择题</font></li>
                            <li>难度：较难</li>
                            <li>日期：2017年1月10日</li>
                        </ul>
                        <div style="width:100%;height: auto;padding-top: 5px;">
                            <div style="margin-left: 10px;font-size: 15px;">
                                <div style="width:100%;">
                                    <span style="margin-left: 0;">【题文】</span>
                                    <span style="margin-left: 85%;font-size: 12px">
                                            <button class="revise" onclick="$('#apple1').show();"  style="background-color:#20C891;border-radius: 5px;color:white;outline: none;">修改</button>
                                            <button class="delete" style="background-color:red;border-radius: 5px;color:white;outline: none;">删除</button>
                                     </span>
                                </div>
                                <form action="" method="get" style="text-indent: 2em;line-height: 25px;margin-top: 5px;">
                                    数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计<br/>
                                    <label><input name="Fruit" type="radio" value="">A：数据结构 </label>&nbsp;
                                    <label><input name="Fruit" type="radio" value="">B：数据结构 </label>&nbsp;
                                    <label><input name="Fruit" type="radio" value="">C：数据结构 </label>&nbsp;
                                    <label><input name="Fruit" type="radio" value="">D：数据结构 </label>&nbsp;
                                </form>
                            </div>
                            <div style="width:100%;">
                                <span>&nbsp;&nbsp;&nbsp;&nbsp;答案：</span><textarea cols="60" rows="2" name="title"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bank" style="width:100%;height:auto;margin-top: 10px;">
                    <div style="width:100%;height:auto;border: 1px #CCCCCC solid">
                        <ul style="list-style: none;margin:0;padding: 5px 10px;background-color: #F7F7F7;">
                            <li>编号：123456</li>
                            <li>类型：<font>选择题</font></li>
                            <li>难度：较难</li>
                            <li>日期：2017年1月10日</li>
                        </ul>
                        <div style="width:100%;height: auto;padding-top: 5px;">
                            <div style="margin-left: 10px;font-size: 15px;">
                                <div style="width:100%;">
                                    <span style="margin-left: 0;">【题文】</span>
                                    <span style="margin-left: 85%;font-size: 12px">
                                            <button class="revise" style="background-color:#20C891;border-radius: 5px;color:white;outline: none;">修改</button>
                                            <button class="delete" style="background-color:red;border-radius: 5px;color:white;outline: none;">删除</button>
                                     </span>
                                </div>
                                <form action="" method="get" style="text-indent: 2em;line-height: 25px;margin-top: 5px;">
                                    数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计数据结构考试系统的开发与设计<br/>
                                    <label><input name="Fruit" type="radio" value="">A：数据结构 </label>&nbsp;
                                    <label><input name="Fruit" type="radio" value="">B：数据结构 </label>&nbsp;
                                    <label><input name="Fruit" type="radio" value="">C：数据结构 </label>&nbsp;
                                    <label><input name="Fruit" type="radio" value="">D：数据结构 </label>&nbsp;
                                </form>
                            </div>
                            <div style="width:100%;">
                                <span>&nbsp;&nbsp;&nbsp;&nbsp;答案：</span><textarea cols="60" rows="2" name="title"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--添加题的弹框-->
<div class="popup app-popup" id="apple" style="display: none;">
    <div class="popup_card">
        <div class="popup_close">
            <div class="close_css"></div>
        </div>
        <div class="popup_sure">
            <div class="popup_title">添加选择题</div>
            <div class="popup_content">
                <form action="" method="">
                    难度：<select name="usercity">
                    <option value="jd">简单</option>
                    <option value="yb">一般</option>
                    <option value="kn" selected>困难</option>
                </select>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    类型：章节<select name="type">
                    <option value="one" selected>一</option>
                    <option value="two">二</option>
                    <option value="three">三</option>
                    <option value="four">四</option>
                    <option value="five">五</option>
                    <option value="six">六</option>
                </select>
                    <br/>
                    题目(可点击下面按钮上传图片)：<textarea cols="65" rows="3" name="title"></textarea>
                    <input type="file" multiple>
                    <br/>
                    选项：A.<input type="text" value="">B.<input type="text" value=""><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C.<input type="text" value="">D.<input type="text" value="">
                    <br><br>
                    答案：<textarea cols="60" rows="2" name="title"></textarea>
                    <br>
                    <input id="submit" type="button" value="提交" style="margin-left: 45%"/>
                </form>
            </div>
        </div>
    </div>
</div>

<!--修改-->
<div class="popup app-popup" id="apple1" style="display: none;">
    <div class="popup_card">
        <div class="popup_close">
            <div class="close_css"></div>
        </div>
        <div class="popup_sure">
            <div class="popup_title">修改</div>
            <div class="popup_content">
                <form action="" method="">
                    难度：<select name="usercity">
                    <option value="jd">简单</option>
                    <option value="yb">一般</option>
                    <option value="kn" selected>困难</option>
                </select>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    类型：章节<select name="type">
                    <option value="one" selected>一</option>
                    <option value="two">二</option>
                    <option value="three">三</option>
                    <option value="four">四</option>
                    <option value="five">五</option>
                    <option value="six">六</option>
                </select>
                    <br/>
                    题目(可点击下面按钮上传图片)：<textarea cols="65" rows="3" name="title"></textarea>
                    <input type="file" multiple>
                    <br/>
                    选项：A.<input type="text" value="">B.<input type="text" value=""><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C.<input type="text" value="">D.<input type="text" value="">
                    <br><br>
                    答案：<textarea cols="60" rows="2" name="title"></textarea>
                    <br>
                    <input id="submit1" type="button" value="提交" style="margin-left: 45%"/>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(function(){
        $("#submit").click(function () {
            $("#apple").hide();
        });
        $("#submit1").click(function () {
            $("#apple1").hide();
        });
    });
</script>
</html>