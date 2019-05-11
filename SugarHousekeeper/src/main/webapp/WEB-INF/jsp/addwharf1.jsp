<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cxt" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script type="text/javascript" src="${cxt }/js/vue.js"></script>
    <script type="text/javascript" src="${cxt }/js/vue-resource.js"></script>
    <!-- <script type="text/javascript">
    $(function(){
    	$("#submit").click(function(){
    		var id = $("input[name='wharfid']").val();
			if(id != 0){
				form.action="/SugarHousekeeper/restfultest/toupdatewharf";
			}else{
				form.action="/SugarHousekeeper/restfultest/toaddwharf";
			}
			alert(form.action);
    	})
    })
    </script> -->
    
</head>
<body>
<div id="app">
      	<button @click="deletewharf()">提交</button>
      	<button @click="deleteww()">删除</button>

	<%-- <form action="" name="form">
		<input type="hidden" name="_method" value="put">
		<input type="hidden" name="wharfid" value="${wharf.wharfid }">
	   <label >最大流速</label>
	     <input type="number" name="maxcurrentspeed" value="${wharf.maxcurrentspeed}" ><br>
	   <label >最大吨位</label>
	     <input  type="number" name="maxtonnage" value="${wharf.maxtonnage}" ><br>
	   <label >最小吨位</label>
	     <input  type="number" name="mintonnage" value="${wharf.mintonnage}" ><br>
	   <label >最大船长</label>
	     <input  type="number" name="maxcaptain" value="${wharf.maxcaptain}" ><br>
	   <label >最小船长</label>
	     <input  type="number" name="minccaptain" value="${wharf.minccaptain}" ><br>
	   <label >最大吃水</label>
	     <input  type="number" name="maxdraft" value="${wharf.maxdraft}" ><br>
	   <label >最小吃水</label>
	     <input  type="number" name="mindraft" value="${wharf.mindraft}" ><br>
	   <label >运行状态</label>
	     <input type="text" name="runningstate" value="${wharf.runningstate}" ><br>
	   <label >备注</label>
			<textarea name="remark" placeholder="请输入内容">${wharf.remark}</textarea><br>
		<input type="submit" id="submit">
	</form> --%>
	<div>
	 <label >最大流速</label>
	     <input type="number" name="maxcurrentspeed" value="1" v-model="item.maxcurrentspeed" ><br>
	     </div>
	     <div>
	   <label >最大吨位</label>
	     <input  type="number" name="maxtonnage" value="1"  v-model="item.maxtonnage" ><br>
	     </div>
	     <div>
	   <label >最小吨位</label>
	     <input  type="number" name="mintonnage" value="1" v-model="item.mintonnage" ><br>
	     </div>
	     <div>
	   <label >最大船长</label>
	     <input  type="number" name="maxcaptain" value="1" v-model="item.maxcaptain" ><br>
	     </div>
	     <div>
	   <label >最小船长</label>
	     <input  type="number" name="minccaptain" value="1" v-model="item.minccaptain" ><br>
	     </div>
	     <div>
	   <label >最大吃水</label>
	     <input  type="number" name="maxdraft" value="1" v-model="item.maxdraft" ><br>
	     </div>
	     <div>
	   <label >最小吃水</label>
	     <input  type="number" name="mindraft" value="1" v-model="item.mindraft" ><br>
	     </div>
	     <div>
	   <label >运行状态</label>
	     <input type="text" name="runningstate" value="1" v-model="item.runningstate" ><br>
	     </div>
	     <div>
	   <label >备注</label>
			<textarea name="remark" placeholder="请输入内容" v-model="item.remark" >1</textarea><br>
			</div>
		<input type="button"  @click="addwharf()" value="添加">
		</div>
	<script type="text/javascript">
    	new Vue({
			el:'#app',
			http: {
			    headers: {'Content-Type':'application/json;charset=UTF-8'}
			  },
    		methods:{
    			addwharf :function(){
    				var resource = this.$resource('toupdatewharf');
    				resource.save(JSON.stringify(this.item)).then(function () {
    				    // 请求成功回调
    				    alert('success');
    				}, function () {
    				    // 请求失败回调
    				    alert('error');
    				})
    			},
    			deleteww:function(){
    				var resource = this.$resource('deletewharf/{id}');
    				resource.delete({id: 66}).then(function () {
    				    // 请求成功回调
    				    alert("success");
    				}, function () {
    				    // 请求失败回调
    				    alert('error');
    				});
    			}
    		}
    	})
    </script>
</body>
</html>