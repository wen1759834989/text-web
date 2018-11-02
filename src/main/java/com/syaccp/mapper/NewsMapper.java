package com.syaccp.mapper;

import java.util.List;

import com.syaccp.pojo.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    News selectByPrimaryKey(Integer id);
    
    List<News> findAll();

    int update(News record);

}