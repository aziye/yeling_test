<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>操作票列表(外操)</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" type="text/css" href="../public/jquery-easyui-1.5.2/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../public/jquery-easyui-1.5.2/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../public/jquery-easyui-1.5.2/demo/demo.css">
    <link rel="stylesheet" type="text/css" href="../uploads/selfCss/operation.css">
    <script type="text/javascript" src="../public/jquery-easyui-1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="../public/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../public/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
</head>
<body style="background:#f3f3f3">
    <!-- 下拉列表、时间控件、查询 -->
    <div class="search clearfix">
<!--       <div class="search-one">
        <select class="easyui-combobox" name="state" style="width:120px;">
            <option value="AL">铁路发油</option>
            <option value="AK">Alaska</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
        </select>
      </div> -->
      <div class="search-two">
        <input class="easyui-datebox" name="birthday"     
        data-options="required:true,showSeconds:false" value="3/4/2010 2:3" style="width:150px"> <span>~</span>
        </div>
       <div class="search-three">
        <input class="easyui-datebox" name="birthday"     
        data-options="required:true,showSeconds:false" value="3/4/2010 2:3" style="width:150px">
      </div>
      <div class="search-four">
        <select class="easyui-combobox" name="state" style="width:120px;">
            <option value="AL">已完成</option>
            <option value="AK">待处理</option>
         
        </select>
      </div>
      <div class="search-five">
        <button>查询</button>
      </div> 
      <div class="search-five"><a href="/SugarHousekeeper/wharf/insertWharf">添加码头泊位信息</a></div> 
    </div>
    <!-- 新建 -->
<!--     <div class="newly">
      <ul class="newly-one">
        <li><a href="#"></a>
          <ul class="newly-two">
            <li><a href="#">视频学习</a></li>
            <li><a href="#">案例学习</a></li>
            <li><a href="#">交流平台</a></li>
            <li><a href="#">交流平台</a></li>
            <li><a href="#">交流平台</a></li>
            <li><a href="#">交流平台</a></li>
            <li><a href="#">交流平台</a></li>
          </ul>
        </li>
      </ul>
    </div> -->
    <!-- 作业编号表格 -->
    <div class="froms">
          
      <table class="easyui-datagrid" style="width:100%;"
          data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
        <thead>
          <tr>
            <th width="10%" data-options="field:'itemid',align:'center'">码头泊位编号</th>
            
            <th width="10%" data-options="field:'productid',align:'center'">最大流速</th>

            <th width="8%" data-options="field:'listprice',align:'center'">最大吨位</th>
            
			<th width="8%" data-options="field:'listprice',align:'center'">最小吨位</th>
			
			<th width="8%" data-options="field:'listprice',align:'center'">最大船长</th>
			
			<th width="8%" data-options="field:'listprice',align:'center'">最小船长</th>
			
			<th width="8%" data-options="field:'listprice',align:'center'">最大吃水</th>
			
			<th width="8%" data-options="field:'listprice',align:'center'">最小吃水</th>
			
			<th width="8%" data-options="field:'status',align:'center'">运行状态</th>
			
			<th width="10%" data-options="field:'fkpeople',align:'center'">备注</th>
			
			<th width="8%" data-options="field:'data',align:'center'">删除</th>
			
			<th width="8%" data-options="field:'time',align:'center'">修改</th>

          </tr> 
        </thead>
        <tbody width="100%">
        
        	<c:forEach items="${wharflist}" var="ww">
			<tr>
				<td>${ww.wharfid}</td>
				<td>${ww.maxcurrentspeed }</td>
				<td>${ww.maxtonnage }</td>
				<td>${ww.mintonnage }</td>
				<td>${ww.maxcaptain }</td>
				<td>${ww.minccaptain }</td>
				<td>${ww.maxdraft }</td>
				<td>${ww.mindraft }</td>
				<td>${ww.runningstate }</td>
				<td>${ww.remark }</td>
				<td><a href="/SugarHousekeeper/wharf/deletewharf?wharfid=${ww.wharfid}">删除</a></td>
				<td><a href="toupdatewharf?wharfid=${ww.wharfid}">修改</a></td>
			</tr>
			</c:forEach>
        </tbody>
      </table>
    </div>

        
</body>
<script type="text/javascript" src="../uploads/selfJs/private-yc.js"></script>
</html>