package com.echo.web.model;

public class OnlineExaminAnalysis {
    private Integer id;

    private Integer studentId;

    private Integer paperId;

    private String studentDescription;

    private String teacherDescription;

    private Integer analysisFlag;

    private String tempId1;

    private String tempId2;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getStudentDescription() {
        return studentDescription;
    }

    public void setStudentDescription(String studentDescription) {
        this.studentDescription = studentDescription == null ? null : studentDescription.trim();
    }

    public String getTeacherDescription() {
        return teacherDescription;
    }

    public void setTeacherDescription(String teacherDescription) {
        this.teacherDescription = teacherDescription == null ? null : teacherDescription.trim();
    }

    public Integer getAnalysisFlag() {
        return analysisFlag;
    }

    public void setAnalysisFlag(Integer analysisFlag) {
        this.analysisFlag = analysisFlag;
    }

    public String getTempId1() {
        return tempId1;
    }

    public void setTempId1(String tempId1) {
        this.tempId1 = tempId1 == null ? null : tempId1.trim();
    }

    public String getTempId2() {
        return tempId2;
    }

    public void setTempId2(String tempId2) {
        this.tempId2 = tempId2 == null ? null : tempId2.trim();
    }
}