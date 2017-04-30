<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  
                    <form method="post" action="" id="formStudent">
                        <div class="setInput"><span>学号</span><input type="text" value="${student.studentId}" name="studentId"></div>
                        <div class="setInput"><span>姓名</span><input type="text" value="${student.studentName}" name="studentName"></div>
                        <div class="setInput"><span>登录名</span><input type="text" value="${student.studentNickename}" name="studentNickename"></div>
                        <div class="setInput"><span>密码</span><input type="text" value="${student.studentPasswd}" name="studentPasswd"></div>
                        <div class="setInput"><span>性别</span><input type="text" value="${student.studentSex}" name="studentSex"></div>
                        <div class="setInput"><span>入学年份</span><input type="date" class="shuru" value="${student.startDate}" name="studentStartDate"></div>
                        <div class="setInput"><span>电话</span><input type="text" value="${student.studentPhone}" name="studentPhone"></div>
<!--                         <div class="btn1 que" onclick="updataStudent();">确定</div> -->
						<div>
                        <input type="button" class="btn btn-primary" data-dismiss="modal" onclick="addStudentInfo();" value="提交">
					
				
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="取消"></div>
                        </form>
