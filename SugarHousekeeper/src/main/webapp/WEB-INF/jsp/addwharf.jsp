<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="cxt" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript" src="${cxt }/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${cxt }/public/layui/css/layui.css">
    <script type="text/javascript" src="${cxt }/public/layui/layui.js"></script>
<script>
	$(function(){
		$("#submit").click(function(){
			var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
			var id = $("#id").val();
			if(id == ""){
				form.action="/restfultest/addwharf";
			}else{
				form.action="updatewharf";
			}
			parent.layer.close(index);
			parent.window.location.href='showalls';
		})
	});
	
</script>
</head>
<body>
	<form class="layui-form" action="./../restfultest/addwharf" name="form">
		<input type="hidden" id="id" name="wharfid" value="${wharf.wharfid}">
		<input type="hidden" name="_method" value="put">
		<div style="width: 400px">
			<div class="layui-form-item">
			   <label class="layui-form-label">最大流速</label>
			   <div class="layui-input-block">
			     <input type="number" name="maxcurrentspeed" value="${wharf.maxcurrentspeed}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">最大吨位</label>
			   <div class="layui-input-block">
			     <input  type="number" name="maxtonnage" value="${wharf.maxtonnage}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">最小吨位</label>
			   <div class="layui-input-block">
			     <input  type="number" name="mintonnage" value="${wharf.mintonnage}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">最大船长</label>
			   <div class="layui-input-block">
			     <input  type="number" name="maxcaptain" value="${wharf.maxcaptain}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">最小船长</label>
			   <div class="layui-input-block">
			     <input  type="number" name="minccaptain" value="${wharf.minccaptain}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">最大吃水</label>
			   <div class="layui-input-block">
			     <input  type="number" name="maxdraft" value="${wharf.maxdraft}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">最小吃水</label>
			   <div class="layui-input-block">
			     <input  type="number" name="mindraft" value="${wharf.mindraft}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">运行状态</label>
			   <div class="layui-input-block">
			     <input type="text" name="runningstate" value="${wharf.runningstate}" class="layui-input">
			   </div>
			</div>
			<div class="layui-form-item">
			   <label class="layui-form-label">备注</label>
			   <div class="layui-input-block">
					<textarea name="remark" placeholder="请输入内容" class="layui-textarea">${wharf.remark}</textarea>
			   </div>
			</div>
		<div class="layui-form-item">
		    <div class="layui-input-block">
				<input type="submit" class="layui-btn" id="submit">
		      	<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
  		</div>
		</div>
	</form> 
	
	<!-- <form action="../restfulwharf/wharf/1" method="get">
        <input type="hidden" name="_method" value="DELETE">
        <input type="submit" value="DELETE">
    </form>
    <form action="../restfulwharf/wharf/2" method="get">
        <input type="hidden" name="_method" value="PUT">
        <input type="submit" value="PUT">
    </form>
    <form action="../restfulwharf/wharf/3" method="post">
        <input type="submit" value="post">
    </form>
    <form action="../restfulwharf/wharf/4" method="get">
        <input type="submit" value="get">
    </form> -->
</body>
</html>