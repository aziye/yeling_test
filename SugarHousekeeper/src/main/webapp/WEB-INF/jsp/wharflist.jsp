<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>wharflist</title>
</head>
<body>
	<a href="insertWharf">添加码头泊位信息</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="showall">查询所有码头泊位信息</a>
	 
	<table>
		<tr>
			<th>码头泊位编号</th>
			<th>最大流速</th>
			<th>最大吨位</th>
			<th>最小吨位</th>
			<th>最大船长</th>
			<th>最小船长</th>
			<th>最大吃水</th>
			<th>最小吃水</th>
			<th>运行状态</th>
			<th>备注</th>
			<th>删除</th>
			<th>修改</th>
		</tr>
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
			<td><a href="deletewharf?wharfid=${ww.wharfid}">删除</a></td>
			<td><a href="toupdatewharf?wharfid=${ww.wharfid}">修改</a></td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>