<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


                <table style="margin-top: 10px">
                    <tr class="tr_head">
                        <td style="width:10%;">序号</td>
                        <td style="width:20%;">班级编号</td>
                        <td style="width:30%;">班级全称</td>
                        <td style="width:20%;">考试安排</td>
                        <td style="width:30%;">操作</td>
                    </tr>

	<c:forEach items="${classList}" var="user" varStatus="ite">

	               <!-- 考试头信息的列表展示  classList 为返回的班级列表 -->        
			             <tr>
	                        <td>${ite.count}</td>
	                        <td>${user.classId}</td>
	                        <td>${user.className}</td>
	                        <td>${user.paperFlag}</td>
                       	    <td><a onclick="saveTestpaperAndClass('${user.classId}');">为当前班级组织考试</a></td>
	                    </tr>
	
	</c:forEach>
                </table>