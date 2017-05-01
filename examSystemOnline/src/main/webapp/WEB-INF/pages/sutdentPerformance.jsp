<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

               <c:forEach items="${resultList}" var="result" varStatus="ites">
                    <tr>
                    <td>${ites.count}</td>
                    <td>${result.paperId}</td>
                    <td>${result.studentId}</td>
                    <td>${result.studentName}</td>
                    <td>${result.studentTotalscope}</td>
                    <td>${result.examinFlag}</td>
                    <td>删除</td>
                    
                    
                    </tr>
                    </c:forEach>
