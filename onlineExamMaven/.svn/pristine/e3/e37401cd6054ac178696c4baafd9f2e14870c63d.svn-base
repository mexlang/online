<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>

    <title>试卷管理--修改信息</title>
    <jsp:include page="../common/topbase.jsp"></jsp:include>

<!-- 更新 -->
            <form action="${pageContext.request.contextPath}/TestPaper/updateTestpaperTitleInfo" method="post">
            <div class="page-content">
                <ul class="she_ul" style="">
                    <li>考试名称：<input type="text" class="shuru" name="pagerName" value="${result.pagerName}"></li>
                    <li>考试班级：<input type="text" class="shuru" id="banjimodal1" name="teacherId" value="${result.teacherId}" placeholder="点击此处选择班级：" ></li>
                    <li>考试时间：<input type="date" class="shuru" name="StartTime1" value=""> <input type="datetime" class="shuru" value="" placeholder="请填写开考时间(例如：8:00)"  name="StartTime2"></li>
                    <li>结束时间：<input type="date" class="shuru"  name="EndTime1" value=""> <input type="datetime" class="shuru" value="" placeholder="请填写结束时间(例如：8:00)" name="EndTime2"> </li>
                    <li>考试时长：<input type="number" class="shuru" name="pagerTotaltime" value="${result.pagerTotaltime}"> 分钟</li>
                </ul>
            </div>
      <div style="visibility: hidden;">      
                    试卷编号：<input type="text" class="shuru" id="shijuanmodal1" name="paperId" value="${result.paperId}">
</div>
             <div  style="text-align: center;">
                <input class="button_sheng"  type="submit" value="确定">
            </div>
            </form>
            <br/>
            <br/>
            <br/>
