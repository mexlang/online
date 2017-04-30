<%@ page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	request.setAttribute("student", path);
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="${student}/css/login.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="loginLeft">
        数据结构在线考试系统
    </div>
    <div class="loginRight">
        <h3>登录</h3>
        <form class="form-signin" action="${pageContext.request.contextPath}/administrator/loginStudent" method="post" id="signupForm">
            <div class="loginRight-name"><span>用户名：</span><input id="studentId" name="studentId" type="text" placeholder="请输入用户名"></div>
            <div class="loginRight-name">
                <span>选择身份：</span><select id="studentDesc" name="studentDesc" style="width: 310px;border-radius: 2px;padding: 5px;border: #ccc 1px solid;">
                    <option value="学生">学生</option>
                    <option value="教师">教师</option>
                </select>
            </div>
            <div class="loginRight-name"><span>密码：</span><input id="studentpassword" name="studentpassword" type="password" placeholder="请输入密码"></div>
           ${mesg}
            <button class="button"  onclick="Tologin();">进入</button>
            <div class="form-bottom">
                <a href="">管理员登录>></a>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript"
	src="${student}/js/jquery.js"></script>
<script src="${student}/js/select.js"></script>
<script src="${student}/js/index.js"></script>
<script src="${student}/js/jquery.validate.min.js"></script>
<script type="text/javascript">
	
$(document).ready(function(){
	// 在键盘按下并释放及提交后验证提交表单
	  $("#signupForm").validate({
		// 验证规则 
	    rules: { 	 studentId: {   required: true,  minlength: 5,  maxlength:20 },
	    				studentpassword: {   required:true,  minlength: 5,    maxlength:15  }
	    			},
	    messages: {   studentId: {   required: "请输入帐号",   minlength: "帐号长度不能小于 5 个字母", maxlength: "密码长度不能多于20字符"},
	    			studentpassword: {  required: "请输入新密码",  minlength: "密码长度不能小于 5 个字母",   maxlength: "密码长度不能多于20字符" } 
	    		},
	  submitHandler: function(form) { 
		 
		    form.submit();
	   }
	  });
});

</script>
</body>
</html>