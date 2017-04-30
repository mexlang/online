package com.echo.web.mapper;

import java.util.List;

import com.echo.web.model.OnlineTeacher;

public interface OnlineTeacherMapper {
    int deleteByPrimaryKey(Integer teacherId);

    int insert(OnlineTeacher record);

    int insertSelective(OnlineTeacher record);

    OnlineTeacher selectByPrimaryKey(Integer teacherId);

    int updateByPrimaryKeySelective(OnlineTeacher record);

    int updateByPrimaryKey(OnlineTeacher record);
    
    List<OnlineTeacher> queryAllTeacher();
//    分页
    List<OnlineTeacher> queryAllTeacherForPage(Integer start ,Integer size);
}