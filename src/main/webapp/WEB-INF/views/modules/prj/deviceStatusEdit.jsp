<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#device.name").focus();
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
	<%--<li class="active"><a href="${ctx}/prj/device/form?id=${device.id}">状态${not empty device.id?'修改':'添加'}</a></li> --%>
	<li class="active"><a href="${ctx}/prj/device/form?id=${devicestatus.id}">状态修改</a></li>
</ul><br/>
<form id="inputForm" action="${ctx}/prj/device/status/save" method="post" class="form-horizontal">
	<%--<form:hidden path="id"/>--%>
	<tags:message content="${message}"/>


		<input type="hidden" name="id" value=${devicestatus.id}  maxlength="50" />

		<input type="hidden" name="did" value=${devicestatus.device.id}  maxlength="50" />

		<div class="control-group">
		<label class="control-label">名称:</label>
		<div class="controls">
			<%--<input name="name" value=${device.name == null ? "" : device.name}  class="required" readonly="true"/> --%>
			<input name="name" value=${devicestatus.device.name}  maxlength="50" readonly="true"/>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">起始时间:</label>
		<div class="controls">
			<input name="startTime" value="${devicestatus.startTime.toString().substring(0, devicestatus.startTime.toString().length()-5)}"  maxlength="100"/>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">结束时间:</label>
		<div class="controls">
			<input name="endTime" value="${devicestatus.endTime.toString().substring(0, devicestatus.endTime.toString().length()-5)}" maxlength="100" />
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">状态:</label>
		<div class="controls">
			<select name="status">
				<c:forEach items="${fns:getDictList('device_status')}" var="status">
					<c:choose>
						<c:when test="${status.value == devicestatus.status}">    <option selected="selected" value= ${status.value}> ${status.label}</option>
						</c:when>
						<c:otherwise>  <option value= ${status.value}> ${status.label}</option>
						</c:otherwise>
					</c:choose>
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