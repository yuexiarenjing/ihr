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
						$("#searchForm").attr("action","${ctx}/prj/device/export");
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
			$("#searchForm").attr("action","${ctx}/prj/device/");
			$("#searchForm").submit();
	    	return false;
	    }
	</script>
</head>
<body>
    <%--
	<div id="importBox" class="hide">
		<form id="importForm" action="${ctx}/prj/device/import" method="post" enctype="multipart/form-data"
			style="padding-left:20px;text-align:center;" class="form-search" onsubmit="loading('正在导入，请稍等...');"><br/>
			<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
			<input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
			<a href="${ctx}/prj/device/import/template">下载模板</a>
		</form>
	</div>
	--%>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/prj/device/">设备列表</a></li>
		<shiro:hasPermission name="prj:device:edit"><li><a href="${ctx}/prj/device/form">设备添加</a></li></shiro:hasPermission>
	</ul>

	<form:form id="searchForm" modelAttribute="device" action="${ctx}/prj/device/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<input id="orderBy" name="orderBy" type="hidden" value="${page.orderBy}"/>
		<div>
			<label>名&nbsp;&nbsp;&nbsp;称：</label><form:input path="name" htmlEscape="false" maxlength="50" class="input-small"/>
			&nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询" onclick="return page();"/>
		</div>
	</form:form>

	<tags:message content="${message}"/>

	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>名称</th>
				<th>类型</th>
				<th>位置</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="device">
			<tr>
				<td>${device.name}</td>
				<td>${device.dtype}</td>
				<td>${device.location}</td>
				<td>
					<a href="${ctx}/prj/device/status?id=${device.id}">状态详情&nbsp;&nbsp;</a>
					<a href="${ctx}/prj/device/edit?id=${device.id}">修改&nbsp;&nbsp;</a>
					<a href="${ctx}/prj/device/delete?id=${device.id}">删除&nbsp;&nbsp;</a>
				</td>
			<%--
				<c:forEach items="${device.statusList}" var="status">
					<tr>
					<td>${device.name}</td>
					<td>${status.startTime}</td>
					<td>${status.endTime}</td>
					<td>${status.status}</td>
					<shiro:hasPermission name="prj:device:edit"><td>
    					<a href="${ctx}/prj/device/form?id=${device.id}">修改</a>
						<a href="${ctx}/prj/device/delete?id=${device.id}" onclick="return confirmx('确认要删除该用户吗？', this.href)">删除</a>
					</td></shiro:hasPermission>
					</tr>
				</c:forEach>
			--%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>