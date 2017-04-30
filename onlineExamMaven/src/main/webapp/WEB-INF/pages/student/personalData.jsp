<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	request.setAttribute("student", path);
%>
<div class="main-content">
	<div class="main-content-inner">
		
		<div class="page-content">
			个人资料
			<div class="setPersonal">
				<div>
					<span><i></i>姓名</span>${onlinstudent.studentName }
				</div>
				<div>
					<span>性别</span>${onlinstudent.studentSex }
				</div>
				<div>
					<span>出生日期</span><fmt:formatDate pattern="yyyy-MM-dd hh:mm"  value="${onlinstudent.studentBirthday }" />
				</div>
				<div>
					<span>学号</span>${onlinstudent.studentId}
				</div>

				<div>
					<span>班级</span>${studentclass.className}
				</div>
			</div>
			<div class="btn-password" id="btn-password">修改密码</div>
		</div>
	</div>
</div>
<footer> </footer>
<div class="load" id="load">
	<form class="form-signin" method="post" id="signupForm">
		<div class="alter">
			<div class="setInput">
				<span>原密码</span><input type="password" value="" id="userName">
			</div>
			<div class="setInput">
				<span>新密码</span><input type="password" value="" id="password">
			</div>
			<div class="setInput">
				<span>确认密码</span><input type="password" value="" id="password2">
			</div>
			<div class="btn1_que">
				<a href="javascript:modifyPassword();">确定</a>
			</div>
			<div class="btn1_can" id="btn1_can">取消</div>
		</div>
	</form>
</div>
<script src="${student}/js/jquery.min.js"></script>
<script src="${student}/js/select.js"></script>
<script src="${student}/js/index.js"></script>
<script src="${student}/js/jquery.validate.min.js"></script>
<script>
$("#btn-password").click(function () {
    $("#load").show();
});
$("#btn1_can").click(function () {
    $("#load").hide();
});

	$(document).ready(function(){
    	// 在键盘按下并释放及提交后验证提交表单
  	  $("#signupForm").validate({
  		// 验证规则 
  	    rules: { 	    userName: {   required: true,  minlength: 5,  maxlength:20 },
  	    				password: {   required:true,  minlength: 5,    maxlength:15  },
  	  					password2: {   required:true,  minlength: 5,    maxlength:15  } 
  	    			},
  	    messages: {   userName: {   required: "请输入密码",   minlength: "密码长度不能小于 5 个字母", maxlength: "密码长度不能多于20字符"},
  	                  password: {  required: "请输入新密码",  minlength: "密码长度不能小于 5 个字母",   maxlength: "密码长度不能多于20字符" }, 
  	  				password2: {  required: "请输入新密码",  minlength: "密码长度不能小于 5 个字母",   maxlength: "密码长度不能多于20字符" } 
  	    		},
  	  submitHandler: function(form) { 
  		 if(password==password2){
  			 $.post("${pageContext.request.contextPath}/studentPaper/updatePassword",
  				  	{'userName':${userName},'password':${password}},
  				     function(data){
  				      if(data==1){
  				    	$("#load").hide();
  				      }else{
  				      $.alert({title: '亲情提示 如下：',content:"对不起 更新失败！", });
  				      }
  	  	});
  		 }
  	   }
  	  });
});
</script>