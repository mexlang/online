<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>试卷审核</title>
<jsp:include page="../../common/guanliyuan/topbase.jsp"></jsp:include>
</head>
<body>
<!--头部-->
<jsp:include page="../../common/guanliyuan/head.jsp"></jsp:include>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../../common/guanliyuan/left.jsp"></jsp:include>

    <div class="main-content" style="margin-top: 0px">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"> > 试卷审核</li>
                </ul>
            </div>
            <div class="page-content" style="padding: 0">
                <table>
                    <tr bgcolor="#D7D7D7">
                        <td>试卷名称</td>
                        <td>操作</td>
                    </tr>
<!--                     <tr> -->
<!--                         <td><a>数据结构1阶段考试</a></td> -->
<!--                         <td class="ksBtn"><a href="looktest.html">未审核 点击审核</a></td> -->
<!--                     </tr> -->
 <c:forEach items="${resultList}" var="test">
           <c:set var="string" value="${test.pagerFlag}"/>
                 <c:if test="${fn:startsWith(string, '1')}">
                    <tr>
                        <td><a>${test.pagerName}</a></td>
                        <td class="ksBtn"><font color="#0000FF">审核 通过</font></td>
                    </tr>
                    </c:if>
                    <c:if test="${fn:startsWith(string, '0')}">
                    <tr>
                        <td><a>${test.pagerName}</a></td>
                        <td class="ksBtn">
                        <a href="${pageContext.request.contextPath}/question/queryShowtestpaperForAdmin?paperId=${test.paperId}">
                        <font color="#FF0000">未审核</font> >> 点击审核 
                        </a>
                        </td>
                   </tr>                    
                    </c:if>
                   <c:if test="${fn:startsWith(string, '2')}">
                    <tr>
                        <td><a>${test.pagerName}</a></td>
                        <td class="ksBtn">未通过 审核</td>
                   </tr>                    
                    </c:if>
                    
                    
</c:forEach>                    
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>