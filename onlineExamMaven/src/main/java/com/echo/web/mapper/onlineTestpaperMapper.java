package com.echo.web.mapper;


import java.util.List;

import com.echo.web.model.onlineTestpaper;

public interface onlineTestpaperMapper {
    int deleteByPrimaryKey(Integer paperId);

    int insert(onlineTestpaper record);

    int insertSelective(onlineTestpaper record);

    onlineTestpaper selectByPrimaryKey(Integer paperId);

    int updateByPrimaryKeySelective(onlineTestpaper record);

    int updateByPrimaryKey(onlineTestpaper record);
    
    List<onlineTestpaper> queryTestForpape(int currentPage, Integer pageSize);
    
	int queryStudntForChapterCount();

	List<onlineTestpaper> queryAllTestpape();
    
	List<onlineTestpaper> selectByStudentIdForPage(Integer studentId);

	List<onlineTestpaper> selectByStudentForTeset(Integer studentId);
}