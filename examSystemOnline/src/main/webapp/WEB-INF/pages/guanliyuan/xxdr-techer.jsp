<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教师信息导入</title>
 
 
<jsp:include page="../../common/guanliyuan/topbase.jsp"></jsp:include>




</head>
<body>
<!--头部-->
<jsp:include page="../../common/guanliyuan/head.jsp"></jsp:include>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
<jsp:include page="../../common/guanliyuan/left.jsp"></jsp:include>
<!-- 上部导航 -->
    <div class="main-content" style="margin-top: 0px">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"> > 教师管理</li>
                </ul>
            </div>
            
            
            <div class="page-content" style="padding: 0">
<!--                 <div class="btn-get" onclick="excelToDbforTeacher();">导入教师信息</div> -->
                
  <!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="excelToDbforTeacher();">
    批量添加教师
</button>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="toAdd();">
    添加教师
</button>
    
                <table>
                    <tr bgcolor="#D7D7D7">
                        <td>姓名</td>
                        <td>编号</td>
                        <td>电话</td>
                        <td>操作</td>
                    </tr>

<tbody id="insertTeacher">

</tbody>  

                </table>
                
  	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>              
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					教师管理
				</h4>
			</div>
			<div class="modal-body" id="modaldatainsert">
				在这里添加一些文本
			</div>

		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<div  style="text-align: center" >
	<ul id="pageLimit"   class="pagination pagination-lg"></ul>
</div>
    	<!-- 分页插件使用 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap-paginator.min.js"></script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">


// /* 插入 修改信息的页面 */
 function updataInfoOfTeacher(teacherId){
				
 	$.post("${pageContext.request.contextPath}/ManagerTeacher/toupdata",
 			{teacherId:teacherId},
	function(data){
		$("#modaldatainsert").empty().html(data);
 	});
 }


			/* 保存更改 */
function updataTeacher(){
	$.post("${pageContext.request.contextPath}/ManagerTeacher/updataTeacherInfo",
			$("form").serialize(),
	function(data){
	});
}
/* 获取添加信息的页面  */
function toAdd(){
	$.post("${pageContext.request.contextPath}/ManagerTeacher/toAdd",
	function(data){
		$("#modaldatainsert").empty().html(data);
	});
}

/* 保存新增信息 */
function addTeacherInfo(){
	$.post("${pageContext.request.contextPath}/ManagerTeacher/addTeacherInfo",
			$("form").serialize(),
	function(data){
	});
}

function excelToDbforTeacher() {
	$.post("${pageContext.request.contextPath}/ManagerTeacher/excelToDbforTeacherPage",
			{},
	function(data){
		$("#modaldatainsert").empty().html(data);
// 		overlay();
	});
}

</script>

 <script type="text/javascript">
 var loading="<img src='${pageContext.request.contextPath}/images/tb/lloading.gif' style='width: 25px;height: 25px;'>正在查询，请稍等．．．";

    var pageSizeTemp='${pageSize}';
      var startPageTemp=1;
	 $(document).ready(function(){
		     startTeacherList();
		});
  
	function startTeacherList(){
		//copy 复制一份 post ajax 形式
		   $.post("${pageContext.request.contextPath}/ManagerTeacher/queryTeacherInfoPage",{startPage:startPageTemp,pageSize:pageSizeTemp},
				   function(data){
			
				     $("#insertTeacher").empty().append(data);
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
	                         $("#insertTeacher").empty().append(loading);
	                           startPageTemp=page;
	                           $.post("${pageContext.request.contextPath}/ManagerTeacher/queryTeacherInfoPage",{startPage:page,pageSize:pageSizeTemp},
	                          function(data){
// 	                            alert($("#insertTeacher")[0]);
// 	                            alert(data);
	                            $("#insertTeacher").empty();
	                            $("#insertTeacher").append(data);
	                         });
	                        }
	                    };
	              $('#pageLimit').bootstrapPaginator(options);
			
			 });
		
	}
</script>


</body>
</html>