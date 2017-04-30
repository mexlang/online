package com.echo.web.model;

import org.springframework.stereotype.Component;


@Component
public class OnlineClass {
    private Integer classId;

    private String className;

    private Integer studentId;

    private Integer paperId;

    private String paperFlag;

    private String columnOne;

    private String cloumnTwo;

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getPaperFlag() {
        return paperFlag;
    }

    public void setPaperFlag(String paperFlag) {
        this.paperFlag = paperFlag == null ? null : paperFlag.trim();
    }

    public String getColumnOne() {
        return columnOne;
    }

    public void setColumnOne(String columnOne) {
        this.columnOne = columnOne == null ? null : columnOne.trim();
    }

    public String getCloumnTwo() {
        return cloumnTwo;
    }

    public void setCloumnTwo(String cloumnTwo) {
        this.cloumnTwo = cloumnTwo == null ? null : cloumnTwo.trim();
    }
}