<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 <c:forEach items="${userList}" var="user"  varStatus="ite">
                       <div class="topic">
                        <p class="topicC">${ite.count}. ${user.questionName}</p>
                        <input type="radio" name="one" class="options">A.链接方式存储<br>
                        <input type="radio" name="one" class="options">B.链接方式存储<br>
                        <input type="radio" name="one" class="options">C.链接方式存储<br>
                        <input type="radio" name="one" class="options">D.链接方式存储
                    </div>
             	</c:forEach>
			
			

