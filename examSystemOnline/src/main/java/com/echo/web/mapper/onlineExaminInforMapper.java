package com.echo.web.mapper;

import java.util.List;

import com.echo.web.model.onlineExaminInfor;

public interface onlineExaminInforMapper {
    int insert(onlineExaminInfor record);

    int insertSelective(onlineExaminInfor record);
    
    /**
     *   查询开始点 和查询的记录条数
     *   LIMIT  100 ,2  
     *   第一个参数   试题类型   第二个参数: 开始数据起点 ；  第三个：查询记录条数
       SELECT * FROM `onlineExaminInfor` LIMIT ?,?
     *   
     * @return
     */
    public List<onlineExaminInfor> queryonlineExaminInforForPage(Integer startPage,Integer pageSize);
    public  int queryonlineExaminInforForPageCount();
    
    public List<onlineExaminInfor> getAll ();
    onlineExaminInfor queryById(Integer id);
    
    /***
     * 设置审核字段
     * 1： 审核标志  2：id
     * 
     * @param flag
     * @param id
     */
    void setFlag (Integer flag,Integer id);
}