<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>成绩审核</title>
<jsp:include page="../../common/guanliyuan/topbase.jsp"></jsp:include>
    <style>

    </style>
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
                    <li class="historyTitle" style="float: left"> > 成绩审核</li>
                </ul>
            </div>
            <div class="page-content" style="padding: 0">
               <!--  -->
               
                              <table>
                    <tr bgcolor="#D7D7D7">
                        <td>序号</td>
                        <td>考试</td>
                        <td>学号</td>
                        <td>姓名</td>
                        <td>成绩</td>
                        <td>管理</td>
                    </tr>
                    <tbody  id="insertTeable">
             <%--   <c:forEach items="resu" var="resultList" varStatus="ites">
                    <tr>
                    <td>${ites.count}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    
                    </tr>
                    </c:forEach> --%>
                    </tbody>
</table>
       
     <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>     
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">成绩审核</h4>
            </div>
            <div class="modal-body">在这里添加一些文本</div>
<!--             <div class="modal-footer"> -->
<!--                 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> -->
<!--                 <button type="button" class="btn btn-primary">提交更改</button> -->
<!--             </div> -->
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
       
       
       
          
 <div  style="text-align: center" >
	<ul id="pageLimit"   class="pagination pagination-lg"></ul>
</div>
               
               <!--  -->
            </div>
        </div>
    </div>
</div>

</body>


<script type="text/javascript">

function chengjibaogao(studentId) {
	$.post("${pageContext.request.contextPath}/ManagerStudent/studentExamAnalyze",
			{studentId:studentId},
			function(data){
				$("#insertchengjifenxi").empty().append(data);
			});
}


</script>

<script type="text/javascript">
var pageSizeTemp='${pageSize}';
var startPageTemp=1;

	 $(document).ready(function(){
		     startStudentInfoList();
		});
  
	function startStudentInfoList(){
		//copy 复制一份 post ajax 形式
		   $.post("${pageContext.request.contextPath}/ManagerStudent/StudentExamInfo",{startPage:startPageTemp,pageSize:pageSizeTemp},
				   function(data){
			
				     $("#insertTeable").empty().append(data);
  					var options = { bootstrapMajorVersion:3, //版本
	                        currentPage:startPageTemp, //当前页数
	                        totalPages: ${totalPages}, //总页数
	                        size:"normal",
	                     //   numberOfPages:3,
	                        shouldShowPage:true, 
	                        itemTexts: function (type, page, current) {
	                            switch (type) {
	                                case "first":
	                                    return "首页";
	                                case "prev":
	                                    return "上一页";
	                                case "next":
	                                    return "下一页";
	                                case "last":
	                                    return "末页";
	                                case "page":
	                                    return page;
	                            }
	                        },//点击事件，用于通过Ajax来刷新整个list列表
	                        onPageClicked: function (event, originalEvent, type, page){
// 	                         $("#insertPage").empty().append(loading);
	                           startPageTemp=page;
	                           $.post("${pageContext.request.contextPath}/ManagerStudent/StudentExamInfo",{startPage:page,pageSize:pageSizeTemp},
	                          function(data){
	                            
	                            $("#insertTeable").empty().append(data);
	                         });
	                        }
	                    };
	              $('#pageLimit').bootstrapPaginator(options);
			
			 });
		
	}
</script>
</html>