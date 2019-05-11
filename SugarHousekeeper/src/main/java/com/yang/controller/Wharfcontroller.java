package com.yang.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yang.model.Wharf;
import com.yang.service.WharfService;

/**
 * 
 * @author 邢淼
 *
 */
@Controller
@RequestMapping("/wharf")
public class Wharfcontroller {
	@Resource
	private WharfService wharfservice;

	@RequestMapping("/showall")
	public String showWharf(HttpServletRequest request, Model model) {
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "index";
	}

	@RequestMapping("/showalls")
	public String showWharf(HttpServletRequest request) {
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "private-yc";
	}

	@RequestMapping("/list")
	public String list(HttpServletRequest request) {
		return "private-yc";
	}

	@RequestMapping("/insertWharf")
	public String toinsertWharf(HttpServletRequest request, Model model) {
		return "addwharf";
	}

	@RequestMapping("/inseredwharf")
	public String insertWharf(HttpServletRequest request, Model model, Wharf wharf) {
		wharfservice.insert(wharf);
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "private-yc";
	}
	
	@RequestMapping("/deletewharf")
	public String deletewharf(HttpServletRequest request, Model model, Integer wharfid) {
		wharfservice.deleteByPrimaryKey(wharfid);
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "private-yc";
	}

	@RequestMapping("/deletedwharf")
	public @ResponseBody JSON deletewharf(HttpServletRequest request, Integer wharfid) {
		System.out.println(wharfid);
		wharfservice.deleteByPrimaryKey(wharfid);
		List<Wharf> wharflist = this.wharfservice.findAll();
		return (JSON) JSONObject.toJSON(wharflist);
	}

	@RequestMapping("/toupdatewharf")
	public String toupdate(HttpServletRequest request, Model model, Integer wharfid) {
		Wharf ww = wharfservice.selectByPrimaryKey(wharfid);
		model.addAttribute("wharf", ww);
		return "addwharf";
	}

	@RequestMapping("/updatewharf")
	public String updatewharf(HttpServletRequest request, Model model, Wharf wharf) {
		wharfservice.updateByPrimaryKey(wharf);
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "private-yc";
	}

	@RequestMapping("/selectwharf")
	public String select(HttpServletRequest request, Model model, Wharf wharf) {
		System.out.println(wharf);
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "private-yc";
	}
}
