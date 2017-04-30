<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

   <style>
        body{font-size: 15px;}
        .test_paper{width: 100%;height:auto;overflow:hidden;background-color:#F2F2F2;border: 1px solid greenyellow;padding: 10px 20px}
        .test_paper .test_paperT{width: 100%;height:50px;line-height: 50px;text-align: center;font-size: 24px;font-weight: 700;margin-bottom: 20px;}
        .test_paper .topicT{width: 100%;height: 20px;line-height: 20px;font-size: 18px;}
        .test_paper .topic{width: 100%;height: auto;overflow: hidden;margin-bottom: 15px;}
        .test_paper .topic .topicC{width: 100%;height: auto;}
        .test_paper .topic .topicC .text{width: 100px;border-bottom:1px solid #797979;display: inline-block;}
        .test_paper .topic .topicC .text input{width: 100px;background-color:#F2F2F2;outline: none;border: 0;text-align: center;}
        .test_paper .topic .options{margin-top: 8px;}
        .test_paper .topic textarea{outline: none;background-color:#F2F2F2;}
        .test_paper .test_paperBtn{width: 100%;height: 30px;margin-top: 60px;margin-bottom:30px;}
        .test_paper .test_paperBtn .paperBtn{float: right;margin-left: 30px;width: 60px;height: 30px;line-height: 30px;text-align: center;font-weight: 700;background-color: #0b6cbc;color: #ffffff;border-radius: 5px;cursor: pointer;}
    </style>


			<div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="public.html">首页</a>
                    </li>
                    <li class="">手工组卷</li>
                    <li class="active">组成试卷</li>
                </ul>
            </div>
            
          <div class="test_paper">
                    <div class="test_paperT">试卷预览</div>
            
			<div class="topicT">一、选择题（每题 2 分，共20分）</div>
			<c:choose>
	<c:when test="${fn:length(xuanzeList)>=1}">
			<c:forEach items="${xuanzeList}" var="xuanze" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count} <c:out value="${xuanze.questionName}"></c:out> </p>
					<input type="radio" name="one" class="options">A.${xuanze.optionA}<br>
					<input type="radio" name="one" class="options">B.${xuanze.optionB}<br>
					<input type="radio" name="one" class="options">C.${xuanze.optionC}<br>
					<input type="radio" name="one" class="options">D.${xuanze.optionD}
				</div>
			</c:forEach>
</c:when>
</c:choose>
			<div class="topicT">二、判断题（每题 2 分，共20分）</div>
			<c:forEach items="${panduanList}" var="panduan" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count}  ${panduan.questionName}</p>
					<input type="radio" name="correct" class="options">对 &nbsp;
					<input type="radio" name="correct" class="options">错
				</div>
			</c:forEach>
			<div class="topicT">三、填空题（每空 2 分，共20分）</div>
			<c:forEach items="${tiankongList}" var="tiankong" varStatus="ite">
				<div class="topic">
					<p class="topicC">
						${ite.count}、 ${tiankong.questionName}
					</p>
				</div>
			</c:forEach>
			<div class="topicT">四、简答题（每题 15 分，共30分）</div>
			<c:forEach items="${jiandaList}" var="jianda" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count}、${jianda.questionName}</p>
					<textarea rows="10" cols="100"></textarea>
				</div>
			</c:forEach>
			<div class="topicT">五、算法设计题（每题 20 分，共20分）</div>
			<c:forEach items="${shejiList}" var="sheji" varStatus="ite">
				<div class="topic">
					<p class="topicC">${ite.count}、${sheji.questionName}</p>
					<textarea rows="10" cols="100"></textarea>
					<div>
						<label>请选择上传文件：</label> <input type="file" id="file_input"
							multiple />
					</div>
				</div>
			</c:forEach>
			<div class="test_paperBtn">
				<div class="paperBtn">重组</div>
				<div class="paperBtn">确认</div>
			</div>



</div>
