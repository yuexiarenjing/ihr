<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>样件管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#sample.name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
<ul class="nav nav-tabs">
	<%--<li class="active"><a href="${ctx}/prj/sample/form?id=${sample.id}">状态${not empty sample.id?'修改':'添加'}</a></li> --%>
	<li><a href="${ctx}/prj/sample/status?id=${sample.id}">状态列表</a></li>
	<li class="active"><a href="${ctx}/prj/sample/status/form?id=${sample.id}">状态添加</a></li>
</ul><br/>
<form id="inputForm" action="${ctx}/prj/sample/status/save" method="post" class="form-horizontal">
	<%--<form:hidden path="id"/>--%>
	<tags:message content="${message}"/>

	<input type="hidden" name="id" value=""  maxlength="50" />
	<input type="hidden" name="sid" value=${sample.id}  maxlength="50" />

	<div class="control-group">
		<label class="control-label">名称:</label>
		<div class="controls">
			<%--<input name="name" value=${sample.name == null ? "" : sample.name}  class="required" readonly="true"/> --%>
				<input name="name" value=${sample.name}  maxlength="50" readonly="true"/>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">起始时间:</label>
		<div class="controls">
			<input name="startTime" value=""  maxlength="100" class="required"/>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">结束时间:</label>
		<div class="controls">
			<input name="endTime" value="" maxlength="100" class="required"/>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">状态:</label>
		<div class="controls">
			<select name="status" >
				<c:forEach items="${fns:getDictList('sample_status')}" var="status">
					   <c:if test="${status.value == '0'}">
						   <option  selected="selected" value= ${status.value}> ${status.label}
					   </c:if>
						<c:if test="${status.value != '0'}">
							<option value= ${status.value}> ${status.label}
						</c:if>
					</option>
				</c:forEach>
			</select>
		</div>
	</div>
	<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
		<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
	</div>
</form>
</body>
</html>