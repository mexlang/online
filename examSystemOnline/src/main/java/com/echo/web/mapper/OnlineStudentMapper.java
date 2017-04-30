package com.echo.web.mapper;

import java.util.List;

import com.echo.web.model.OnlineStudent;



public interface OnlineStudentMapper {
    int deleteByPrimaryKey(Integer studentId);

    int insert(OnlineStudent record);

    int insertSelective(OnlineStudent record);

    OnlineStudent selectByPrimaryKey(Integer studentId);

    int updateByPrimaryKeySelective(OnlineStudent record);

    int updateByPrimaryKey(OnlineStudent record);
    
    
//    OnlineStudent selectByStudent(Integer studentId,String  studentName,String studentPasswd);
    
    OnlineStudent selectByStudent(Integer studentId);
    List<OnlineStudent> selectAllStudent();
    
    List<OnlineStudent> selectStudentForPage(Integer startPage,Integer pageSize);
}