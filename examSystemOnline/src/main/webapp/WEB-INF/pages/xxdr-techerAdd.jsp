<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:forEach items="${teacherList}" var="teacher" >
                    <tr>
                        <td class="name"><input type="checkbox" class="checkbox"><a>${teacher.teacherName}</a></td>
                        <td class="idCard">${teacher.teacherId}</td>
                        <td class="idCard">${teacher.teacherPhone}</td>
                        <td class="ksBtn"><button data-toggle="modal" data-target="#myModal" onclick="updataInfoOfTeacher('${teacher.teacherId}');">点击修改</button>&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/ManagerTeacher/deleteTeacherInfo?teacherId=${teacher.teacherId}">删除</a></td>
                    </tr>
                    
                    <!-- updataInfoOfTeacher(); -->
</c:forEach>                    
