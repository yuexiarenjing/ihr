<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>人员管理</title>
	<meta name="decorator" content="default"/>
	<%@include file="/WEB-INF/views/include/dialog.jsp" %>
	<style type="text/css">.sort{color:#0663A2;cursor:pointer;}</style>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btnExport").click(function(){
				top.$.jBox.confirm("确认要导出用户数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/sys/people/export");
						$("#searchForm").submit();
					}
				},{buttonsFocus:1});
				top.$('.jbox-body .jbox-icon').css('top','55px');
			});
			$("#btnImport").click(function(){
				$.jBox($("#importBox").html(), {title:"导入数据", buttons:{"关闭":true}, 
					bottomText:"导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
			});
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").attr("action","${ctx}/prj/people/");
			$("#searchForm").submit();
	    	return false;
	    }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/prj/people/">状态列表</a></li>
		<li><a href="${ctx}/prj/people/status/form?id=${people.id}">状态添加</a></li>
	</ul>

	<tags:message content="${message}"/>

	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>姓名</th>
				<th>起始时间</th>
				<th>结束时间</th>
				<th>状态</th>
				<th>编辑</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="status">
			<tr>
				<td>${status.people.name}</td>
				<td>${status.startTime.toString().substring(0, status.startTime.toString().length()-5)}</td>
				<td>${status.endTime.toString().substring(0, status.endTime.toString().length()-5)}</td>
				<td>
					<c:if test="${status.status == '0'}">空闲</c:if>
					<c:if test="${status.status == '1'}">忙碌，可接受新任务</c:if>
					<c:if test="${status.status == '2'}">忙碌，不可接受新任务</c:if>
					<c:if test="${status.status == '3'}">不在工作岗位</c:if>
				</td>
				<td>
					<a href="${ctx}/prj/people/status/edit?id=${status.id}">修改&nbsp;&nbsp;</a>
					<a href="${ctx}/prj/people/status/delete?id=${status.id}&pid=${people.id}">删除&nbsp;&nbsp;</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>