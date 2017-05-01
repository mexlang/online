<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

    <!--左侧导航-->
    <div id="sidebar" class="sidebar responsive">
        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <!--左侧分类导航栏-->
            <ul class="nav nav-list mainLeft-tab">
                <li data-value="xxdr-student">
                    <a href="${pageContext.request.contextPath}/ManagerStudent/queryStudent">
                        <img src="${pageContext.request.contextPath}/img/stu.png" style="width: 20px;height: 20px;">
                        学生管理
                    </a>
                </li>
                <li data-value="xxdr-techer">
                    <a href="${pageContext.request.contextPath}/ManagerTeacher/queryTeacher">
                        <img src="${pageContext.request.contextPath}/img/tec.png" style="width: 20px;height: 20px;">
                    教师管理
                    </a>
                </li>
                <li data-value="examination">
                    <a href="${pageContext.request.contextPath}/TestPaper/queryAllTestPaperTitleInfoForAdmin">
                        <img src="${pageContext.request.contextPath}/img/examination.png" style="width: 20px;height: 20px;">
                    试卷审核
                    </a>
                </li>
                <li data-value="Performance">
                    <a href="${pageContext.request.contextPath}/ManagerStudent/queryAllStudentExamInfo">
                        <img src="${pageContext.request.contextPath}/img/Performance.png" style="width: 20px;height: 20px;">
                    成绩审核
                    </a>
                </li>
                                <li data-value="Performance">
                    <a href="${pageContext.request.contextPath}/ManagerStudent/queryAllStudentExamInfo">
                        <img src="${pageContext.request.contextPath}/img/Performance.png" style="width: 20px;height: 20px;">
                    考试审核
                    </a>
                </li>
            </ul>
        </div>
    </div>
 

