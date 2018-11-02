<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>后台管理 - 易买网</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<link rel="stylesheet" type="text/css" href="${sessionScope.ctx}/css/style.css"/>
	<script type="text/javascript"
	src="${sessionScope.ctx}/js/jquery-1.4.1.min.js"></script>
	<script type="text/javascript">
		document.ready(function(){
			$.ajax({
				url:"${ctx}/news/ajax",
				data:"id=5&content=你是猪吗",
				type:"get",
				success:function(date){
					alert(date.id);
				}
				
			});
			
		});
	
	</script>
  </head>
  	
 <body>
 		 
		<!-- 头部 -->
		<%@ include file="/WEB-INF/common/header.jsp"%>
		<!-- 中部 -->
		<div id="main" class="wrap">
			<%-- 左  --%>
			<%@ include file="/WEB-INF/common/left.jsp"%>
			<%-- 右  --%>
			<div class="main">
		<h2>新闻提交</h2>
		<div class="manage">
		<form action="${ctx}/news/edit/3" method ="post">
				<table class="form">
					<tbody><tr>
						<td class="field">新闻标题：</td>
						<td><input type="text" name="title"/></td>
					</tr>
					<tr>
						<td class="field">新闻内容：</td>
						<td><input type="text" name="content"/></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" value="提交" name="submit"/></label></td>
					</tr>
				</tbody></table>
			</form>
		</div>
	</div>
			<div class="clear"></div>
		</div>
		<!-- 尾部 -->
		<%@ include file="/WEB-INF/common/footer.jsp"%>
	</body>
</html>
