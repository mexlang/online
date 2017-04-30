<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


                <table style="margin-top: 10px">
                    <tr class="tr_head">
                        <td style="width:20%;">序号</td>
                        <td style="width:30%;">试卷编号</td>
                        <td style="width:20%;">总分</td>
                        <td style="width:30%;">试卷管理</td>
                    </tr>


	<c:forEach items="${resultList}" var="user" varStatus="ite">

	               <!-- 列表展示  PaperId-->        
			             <tr>
	                        <td>${ite.count}</td>
	                        <td>${user}</td>
	                        <td>${user}</td>
                       	    <td>
                       	    <a onclick="insertPaperIdIntoOnlineTestpaper('${user}');">设置为本次考试试卷</a>&nbsp;&nbsp;&nbsp;&nbsp;
                       	    <a onclick="querytoShowatestpaper('${user}');">点击查看</a>
                       	    </td>
	                    </tr>
   </c:forEach>          
                </table>
                
                <script type="text/javascript">
                
                /* 	预览组卷   */
                function querytoShowatestpaper(paperId){
                	//
                	  $.post("${pageContext.request.contextPath}/question/queryShowtestpaper",{paperId:paperId},
                			  function(data){
                		  $("#modaldatainsert").empty().html(data);
                	  });
                }
                
                </script>