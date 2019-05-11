<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cxt" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <%-- <script type="text/javascript" src="${cxt }/js/jquery-3.2.1.min.js"></script> --%>
    <script type="text/javascript" src="${cxt }/js/vue.min.js"></script>
    <script type="text/javascript">
    	alert(document.getElementById('names').value);
		/* function deletewharf(id){
			if(confirm('确认删除'+id+'号码头泊位吗?')){
				$.ajax({
					 type: 'DELETE',  
			         url: 'deletewharf/' + id,  
			         contentType: 'application/json',  
			         success:function(){
			        	 alert("删除成功");
			        	 window.location="wharflist";
			         } 
				})
			}
		} */
    </script>
    <style type="text/css">
    body {
  font-family: Helvetica Neue, Arial, sans-serif;
  font-size: 14px;
  color: #444;
}

table {
  border: 2px solid #42b983;
  border-radius: 3px;
  background-color: #fff;
}	

th {
  background-color: #42b983;
  color: rgba(255,255,255,0.66);
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

td {
  background-color: #f9f9f9;
}

th, td {
  min-width: 95px;
  padding: 10px 11px;
}

th.active {
  color: #fff;
}

th.active .arrow {
  opacity: 1;
}

.arrow {
  display: inline-block;
  vertical-align: middle;
  width: 0;
  height: 0;
  margin-left: 5px;
  opacity: 0.66;
}

.arrow.asc {
  border-left: 4px solid transparent;
  border-right: 4px solid transparent;
  border-bottom: 4px solid #fff;
}

.arrow.dsc {
  border-left: 4px solid transparent;
  border-right: 4px solid transparent;
  border-top: 4px solid #fff;
}
    
    </style>
</head>
<body>
 <script type="text/x-template" id="grid-template">
      <table v-if="filteredData.length">
        <thead>
          <tr>
            <th v-for="key in columns"
              @click="sortBy(key)"
              :class="{ active: sortKey == key }">
              {{ key | capitalize }}
              <span class="arrow" :class="sortOrders[key] > 0 ? 'asc' : 'dsc'">
              </span>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="entry in filteredData">
            <td v-for="key in columns">
              {{entry[key]}}
            </td>
          </tr>
        </tbody>
      </table>
      <p v-else>No matches found.</p>
    </script>

    <!-- demo root element -->
    <div id="demo">
      <form>
        Search <input name="query" v-model="searchQuery">
      </form>
      <demo-grid
        :data="gridData"
        :columns="gridColumns"
        :filter-key="searchQuery">
      </demo-grid>
    </div>
    
    <script type="text/javascript" src="${cxt }/js/grid.js"></script>
	<%-- wharflist<br/>
	<c:forEach items="${wwlist}" var="ww">
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
		<td><a href="javascript:deletewharf(${ww.wharfid});">删除</a></td>
		<td><a href="updatewharf/${ww.wharfid}">修改</a></td><br>
	</c:forEach>--%>
	<a href="addwharf">添加码头泊位信息</a> 
	<script type="text/javascript">
	var demo = new Vue({	
		  el: '#demo',
		  data: {
		    searchQuery: '',
		    gridColumns: ${names },
		    gridData: ${value }
		  }
		})
	</script>
</body>
</html>