package com.yang.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.yang.model.Wharf;
import com.yang.service.WharfService;

/**
 *  
 * @author <a href="mailto:xingm@vt08.com">xingMiao</a>
 * @version 1.0, 2018年1月23日
 */
@Controller
@RequestMapping("/restfultest")
public class RestWharftestController {

	@Resource
	private WharfService wharfservice;

	@RequestMapping("/showall")
	public String showWharf(HttpServletRequest request, Model model) {
		List<Wharf> wharflist = this.wharfservice.findAll();
		request.getSession().setAttribute("wharflist", wharflist);
		return "index";
	}

	/**
	 * 保存添加的新码头泊位
	 * 
	 * @param ww
	 * @return
	 */
	@RequestMapping(value = "/toaddwharf", method = RequestMethod.PUT)
	public String showWharf(Wharf ww, Model model) {
		wharfservice.insert(ww);
		List<Wharf> wwlist = wharfservice.findAll();
		model.addAttribute("names", Wharf.getname());
		model.addAttribute("value", JSON.toJSON(wwlist));
		return "showlist";
	}
	
	@RequestMapping("/addwharf")
	public String showWharf() {
		return "addwharf1";
	}

	/**
	 * 跳转到修改该页面
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/updatewharf/{id}")
	public String update(@PathVariable("id") int id, Model model) {
		Wharf ww = wharfservice.selectByPrimaryKey(id);
		model.addAttribute("wharf", ww);
		return "addwharf1";
	}

	/**
	 * 保存修改的码头泊位信息
	 * 
	 * @param ww
	 * @return
	 */
	@RequestMapping(value = "/toupdatewharf", method = RequestMethod.POST)
	public String updatewharf(@RequestBody Wharf item, Model model) {
		System.out.println(item);
		// wharfservice.updateByPrimaryKey(ww);
		List<Wharf> wwlist = wharfservice.findAll();
		model.addAttribute("names", Wharf.getname());
		model.addAttribute("value", JSON.toJSON(wwlist));
		return "showlist";
	}

	@RequestMapping(value = "/wharfjsonlist", method = RequestMethod.GET)
	public @ResponseBody List<Wharf> showlist() {
		List<Wharf> wwlist = wharfservice.findAll();
		return wwlist;
	}

	@RequestMapping(value = "/wharflist", method = RequestMethod.GET)
	public String showlist(Model model) {
		List<Wharf> wwlist = wharfservice.findAll();
		// model.addAttribute("wwlist", wwlist);
		model.addAttribute("names", Wharf.getname());
		model.addAttribute("value", JSON.toJSON(wwlist));
		return "showlist";
	}

	@RequestMapping(value = "/deletewharf/{id}", method = RequestMethod.DELETE)
	public @ResponseBody int deletewharf(@PathVariable("id") int id) {
		return wharfservice.deleteByPrimaryKey(id);
	}
}
