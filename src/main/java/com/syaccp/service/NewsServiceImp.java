package com.syaccp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.syaccp.mapper.NewsMapper;
import com.syaccp.pojo.News;

@Service("newsService")
public class NewsServiceImp implements NewsService {


	public NewsServiceImp() {
		System.out.println("NewsServiceImp 造出来了");
	}

	@Resource
	NewsMapper newsMapper;
	
	@Override
	public List<News> findAll() {
		
		return newsMapper.findAll();
	}
}
