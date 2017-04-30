<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<br/>
	<h3>请上传教师信息表</h3><br/>
	<form method="post"  action="${pageContext.request.contextPath}/ManagerTeacher/excelToDbOfTeacher"
		enctype="multipart/form-data">
		<input type="text" name="name" />
		<input type="file" name="file" />
		<br/>
		<input  class="btn btn-primary"  type="submit" /><br/><br/>
		<a href="${pageContext.request.contextPath}/ManagerTeacher/downloadExcel">点击获取信息导入模板</a>
		
	</form>