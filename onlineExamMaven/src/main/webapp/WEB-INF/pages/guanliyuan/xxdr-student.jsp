<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生信息导入</title>
    
    <!-- modal 引入 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- modal  end -->
    
    <!-- 引入基本的库文件 -->
<jsp:include page="../../common/guanliyuan/topbase.jsp"></jsp:include>

    
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
<!-- 上部导航 -->
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li style="float: left">
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="">首页</a>
                    </li>
                    <li class="historyTitle" style="float: left"> > 学生管理</li>
                </ul>
            </div>
            
            <div class="page-content" style="padding: 0">
<!-- 			<div class="btn-get" onclick="excelToDb();">导入学生信息</div> -->
			
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="excelToDb();">
    批量添加学生
</button>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="toAddStudent();">
    添加学生
</button>
		
 
                <table>
                    <tr bgcolor="#D7D7D7">
                        <td>姓名</td>
                        <td>学号</td>
                        <td>班级</td>
                        <td>操作</td>
                    </tr>
                    <tbody  id="insertPage">
                    </tbody>
                    
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    学生管理
                </h4>
            </div>
            <div class="modal-body" id="modaldatainsert">
                在这里添加一些文本
            </div>
<!--             <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div> -->
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>	



		</table>
		<div  style="text-align: center" >
	<ul id="pageLimit"   class="pagination pagination-lg"></ul>
</div>




     
            </div>

        </div>
    </div>


			
<script type="text/javascript">
			/* 插入 修改信息的页面 */
function updataInfoOfStudent(studentId){
				
	$.post("${pageContext.request.contextPath}/ManagerStudent/toupdata",
			{studentId:studentId},
	function(data){
		$("#modaldatainsert").empty().html(data);
	});
}


			/* 保存修改 */
function updataStudent(studentId){
	$.post("${pageContext.request.contextPath}/ManagerStudent/updataStudentInfo",
			$("form").serialize(),
	function(data){
	});
}
		/* 动态请求添加用户的页面 */
function toAddStudent(){
	$.post("${pageContext.request.contextPath}/ManagerStudent/toAdd",
			{},
			function(data){
				$("#modaldatainsert").empty().html(data);
			});
}
		/* 保存新增学生信息 */
function addStudentInfo(){
	
	$.post("${pageContext.request.contextPath}/ManagerStudent/addStudentInfo",
			$("form").serialize(),
			function(data){
			});
}			
			
			/* 上传表格 */
function excelToDb() {
	$.post("${pageContext.request.contextPath}/ManagerStudent/SendExcelToDbPage",
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
		     startStudentList();
		});
  
	function startStudentList(){
		//copy 复制一份 post ajax 形式
		   $.post("${pageContext.request.contextPath}/ManagerStudent/queryStudentInfoPage",{startPage:startPageTemp,pageSize:pageSizeTemp},
				   function(data){
			
				     $("#insertPage").empty().append(data);
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
	                         $("#insertPage").empty().append(loading);
	                           startPageTemp=page;
	                           $.post("${pageContext.request.contextPath}/ManagerStudent/queryStudentInfoPage",{startPage:page,pageSize:pageSizeTemp},
	                          function(data){
	                            
	                            $("#insertPage").empty().append(data);
	                         });
	                        }
	                    };
	              $('#pageLimit').bootstrapPaginator(options);
			
			 });
		
	}
</script>
</body>
</html>