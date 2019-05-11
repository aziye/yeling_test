package com.yang.model;

public class ResultModel {
	private Integer resultCode;
	private Object data;
	private String msg;
	public ResultModel() {
		super();
	}
	public ResultModel(Integer resultCode, Object data, String msg) {
		super();
		this.resultCode = resultCode;
		this.data = data;
		this.msg = msg;
	}
	public Integer getResultCode() {
		return resultCode;
	}
	public void setResultCode(Integer resultCode) {
		this.resultCode = resultCode;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
