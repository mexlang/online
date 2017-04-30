<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>




<div class="smart-widget-body">
	<table class="table">
		

		<tbody id="studentAjaxPages">






		</tbody>
	</table>
</div>

<div style="text-align: center">
	<ul id="pageLimit" class="pagination pagination-lg"></ul>
</div>


<script type="text/javascript">
    var pageSizeTemp=${pageSize};
      var startPageTemp=1;
    
	 $(document).ready(function(){
		     startStudnetList();
		});
  
	function startStudnetList(){
		   $.post("${pageContext.request.contextPath}/studentExam/StudentSelectPage",{startPage:startPageTemp,pageSize:pageSizeTemp},
				   function(data){
			
				     $("#studentAjaxPages").empty().append(data);
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
	                           startPageTemp=page;
	                           $.post("${pageContext.request.contextPath}/studentExam/StudentSelectPage",{startPage:page,pageSize:pageSizeTemp,studentSelectType:studentSelectType},
	                          function(data){
	                            
	                            $("#studentAjaxPages").empty().append(data);
	                         });
	                        }
	                    };
	              $('#pageLimit').bootstrapPaginator(options);
			
			 });
		
	}
	
	
	
	
</script>