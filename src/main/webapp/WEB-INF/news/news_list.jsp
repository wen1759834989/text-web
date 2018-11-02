<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 易买网</title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript"
	src="${sessionScope.ctx}/js/jquery-1.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
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
			<c:set var="flag" value="${sessionScope.flag }"></c:set>
			<h2>
				新闻管理 <font color="red">${flag eq null?"":flag }</font>
				<c:remove var="flag" scope="session" />
			</h2>
			<div class="manage">
				<table class="list">
					<tbody id="tbody">
						<tr>
							<th>编号</th>
							<th>新闻标题</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${list }" var="news" varStatus="newsid">
						<tr>
							<td class="first w4 c">${newsid.count}</td>
							<td>${news.title }</td>
							<td class="w1 c"><a
								href="${ctx}/news/add">编辑</a>
								<a href="${ctx}/news/delete/2"
								id="delete" name="${news.id}">删除</a></td>
						</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
			<div class="pager">
				<ul class="clearfix">


				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<!-- 尾部 -->
	<%@ include file="/WEB-INF/common/footer.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {

			$("a#dele").live("click", function() {
				if (confirm("确定要删除吗?")) {
					var id = $(this).attr("name");
					var $del = $(this);
				}
			});
		});
	</script>
</body>
</html>
