package com.yang.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yang.model.ResultModel;
import com.yang.model.Wharf;
import com.yang.service.WharfService;

/**
 *  
 * @author <a href="mailto:xingm@vt08.com">xingMiao</a>
 * @version 1.0, 2018年1月10日
 */
@Controller
@RequestMapping("/restfulwharf")
@Api(value="restfulwharf")
public class RestfulWharfController {

	@Resource
	private WharfService wharfservice;

	@RequestMapping("/showall")
	public @ResponseBody List<Wharf> showWharf() {
		List<Wharf> wharflist = this.wharfservice.findAll();
		return wharflist;
	}
	
	@ApiOperation(value="测试专用")	
	@RequestMapping(value = "/wharf/{id}", method = RequestMethod.DELETE)	
	public String delete(@PathVariable("id") Integer id) {
		System.out.println("delete" + id);
		return "hello";
	}

	@RequestMapping(value = "/wharf/{id}", method = RequestMethod.POST)
	public String post(@PathVariable("id") Integer id) {
		System.out.println("post" + id);
		return "hello";
	}

	@RequestMapping(value = "/wharf/{id}", method = RequestMethod.GET)
	public String get(@PathVariable("id") Integer id) {
		System.out.println("get" + id);
		return "hello";
	}

	@RequestMapping(value = "/wharf/{id}", method = RequestMethod.PUT)
	public String put(@PathVariable("id") Integer id) {
		System.out.println("put" + id);
		return "hello";
	}
	@RequestMapping(value = "/wharfs/{id}", method = RequestMethod.POST)
	public @ResponseBody ResultModel postReq(@PathVariable("id") Integer id) {
		System.out.println("postyeling" + id);
		List<Wharf> wwlist = wharfservice.findAll();
		return new ResultModel(200, wwlist, "ok");
	}
	@RequestMapping(value = "/wharfs", method = RequestMethod.POST)
	public @ResponseBody ResultModel postReqs(@RequestBody Wharf ss) {
		System.out.println("postyeling" + ss.getRemark());
		List<Wharf> wwlist = wharfservice.findAll();
		return new ResultModel(200, wwlist, "ok1");
	}
}
