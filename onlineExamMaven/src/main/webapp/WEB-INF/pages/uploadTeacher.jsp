<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  
                    <form method="post" action="" id="formStudent">
                        <div class="setInput"><span>姓名</span><input type="text" value="${teacher.teacherId}" name="teacherId"></div>
                        <div class="setInput"><span>姓名</span><input type="text" value="${teacher.teacherName}" name="teacherName"></div>
                        <div class="setInput"><span>登录名</span><input type="text" value="${teacher.teacherNickname}" name="teacherNickname"></div>
                        <div class="setInput"><span>密码</span><input type="password" value="${teacher.teacherPasswd}" name="teacherPasswd"></div>
                        <div class="setInput"><span>性别</span><input type="text" value="${teacher.teacherSex}" name="teacherSex"></div>
                        <div class="setInput"><span>电话</span><input type="text" value="${teacher.teacherPhone}" name="teacherPhone"></div>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updataTeacher();">确定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        </form>
