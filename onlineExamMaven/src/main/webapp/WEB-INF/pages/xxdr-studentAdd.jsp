<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


 <c:forEach items="${StudentList}" var="student" varStatus="ites">
  					<tr>
                        <td class="name"><input type="checkbox" class="checkbox"><a>${student.studentName}</a></td>
                        <td class="idCard">${student.studentId}</td>
                        <td class="class">一班</td>
                        <td class="ksBtn"><button type="button" data-toggle="modal" data-target="#myModal" onclick="updataInfoOfStudent('${student.studentId}');">点击修改</button>&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/ManagerStudent/deleteStudentInfo?studentId=${student.studentId}">删除</a></td>
                    </tr>
 <!--   <button type="button" data-dismiss="modal" onclick="updataInfoOfStudent('${student.studentId}');">   -->
 </c:forEach>

