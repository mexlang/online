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
                    <td>
                    <button data-toggle="modal" data-target="#myModal" onclick="chengjibaogao('${result.studentId}');">生成成绩报告</button>
                    </td>
                      </tr>
                    </c:forEach>

                 
                    
