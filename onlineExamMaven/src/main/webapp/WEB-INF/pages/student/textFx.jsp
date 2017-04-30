<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="main-content">
        <div class="main-content-inner">
       
            <div class="page-content">
                <div class="content">
                    <h3>成绩分析</h3>
                    <textarea id="entersystem"></textarea>
                    <input type="button" class="but" value="提交" onclick="studenttoanalysis(${paperId});"/>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/index.js"></script>
<script type="text/javascript">

function studenttoanalysis(paperId){
	var entersystem = $(entersystem).val();
	$.post("${pageContext.request.contextPath}/studentPaper/savestudentmace",
			{entersystem:entersystem,paperId:paperId},
			function(data) {
				if(data==1){
					alert("提交成功");
				}else{
					
				}
			});
}
</script>