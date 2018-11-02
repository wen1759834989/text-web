package com.syaccp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syaccp.pojo.News;
import com.syaccp.service.NewsService;

@Controller
@RequestMapping(value={"/news"})
public class NewsController {

	@Resource
	private NewsService newsService;
	
	public NewsController() {
		System.out.println("NewsController 造出来了");
	}
	
	@RequestMapping(value ="/save",method = RequestMethod.POST)
	public String save(News news){
		System.out.println("NewsController save");
		System.out.println("NewsController save=======>"+news.getId());
		System.out.println("NewsController save=======>"+news.getTitle());
		System.out.println("NewsController save=======>"+news.getContent());
		return "redirect:/news";
	}
	@RequestMapping(value ="",method=RequestMethod.GET)
	public String list(ModelMap map){
		System.out.println("NewsController  list");
		List<News> list = newsService.findAll();
		map.addAttribute("list", list);
		return "/news/news_list";
	}
	
	@RequestMapping(value ="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id")Integer id){
		System.out.println("NewsController delete=======>"+id);
		
		return "redirect:/news";
	}
	
	@RequestMapping(value="/add")
	public String add(){
		System.out.println("NewsController add");
		return "/news/news_edit_and_add";
	}
	
	@RequestMapping(value ="/edit/{id}",method=RequestMethod.POST)
	public String edit(@PathVariable("id")Integer id,News news){
		System.out.println("NewsController edit"+id);
		System.out.println("NewsController edit"+news.getTitle());
		return "redirect:/news";
	}
	
	@ResponseBody
	@RequestMapping(value ="ajax")
	public News ajax(News news,HttpServletResponse response){
		System.out.println("NewsController edit"+news.getId());
		System.out.println("NewsController edit"+news.getContent());
		return news;
	}
}
