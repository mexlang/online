<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<br/>
	<h3>请上传学生信息表</h3><br/>
	<form method="post"  action="${pageContext.request.contextPath}/ManagerStudent/excelToDb"
		enctype="multipart/form-data">
		<input type="text" name="name" />
		<input type="file" name="file" /><br/><br/>
		<input class="btn btn-primary"  type="submit" /><br/><br/>
	</form>
	<a href="${pageContext.request.contextPath}/ManagerStudent/downloadExcel">点此：获取信息导入模板</a>