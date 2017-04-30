<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${fn:length(userList)>=1}">
 <c:forEach items="${userList}" var="user"  varStatus="ite">
                               <div class="content1">
                            <div style="width:100%;height:auto;border: 1px #CCCCCC solid">
                                <ul style="list-style: none;margin:0;padding: 5px 10px;background-color: #F7F7F7;">
                                    <li>编号：${user.questionId}</li>
                                    <li>类型：<font>填空题</font></li>
                                    <li>难度：${user.questionDifficulty}</li>
                                    <li>日期：${user.questionCreatetime}</li>
                                </ul>
                                <div style="width:100%;height: auto;padding-top: 5px;">
                                    <div style="margin-left: 10px;font-size: 15px;">
                                        <div style="width:100%;">
                                            <span style="margin-left: 0;">【题文】</span>
                                            <span style="margin-left: 85%;font-size: 12px">
                                            <a onclick="addQuestionIntoTestpaper(${user.questionId});">
                                                <button style="background-color:#20C891;border-radius: 5px;color:white">加入试题篮</button>
                                                </a>
                                            </span>
                                        </div>
                                        <div style="text-indent: 2em;line-height: 25px;margin-top: 5px;">
 										${user.questionName}<br/>                                        </div>
                                        <p style="margin-top: 5px;font-weight: bolder">请在此填写你的答案：(填空题之间用“、”隔开)
                                            <input type="text" style="width: 900px;">
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
             	</c:forEach>
				</c:when>
				 <c:otherwise>  对不起  暂无数据！
				<a href="${pageContext.request.contextPath}/html/shouzu.jsp">返回上页</a>
				 </c:otherwise>
			</c:choose>
			
			

