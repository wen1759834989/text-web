<%@page import="java.util.Date"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div id="header" class="wrap">
<script type="text/javascript" src="${sessionScope.ctx}/js/del.js"></script>
<c:set var = "ctx" value="${pageContext.request.contextPath }" scope="session"></c:set>
	<div id="logo"><img src="${sessionScope.ctx }/images/logo.gif" onload="date_present()"></div>
	<div class="help"><a href="${sessionScope.ctx }/IndexServlet">返回前台页面</a></div>
	<div class="help"><a href="${sessionScope.ctx }/logout">退出</a></div>
	<div class="navbar">
		<ul class="clearfix"> 
			<li ${param.csstype eq 1 ? "class=current":"" }><a href="${sessionScope.ctx }/user/userAction!home.action?csstype=1">首页</a></li>
			<li ${param.csstype eq 2 ? "class=current":"" }><a href="${ctx}/user/userAction.action">用户</a></li>
			<li ${param.csstype eq 3 ? "class=current":"" }><a href="${sessionScope.ctx }/product/productAction.action">商品</a></li>
			<li ${param.csstype eq 4 ? "class=current":"" }><a href="${sessionScope.ctx }/order/orderAction.action?csstype=4">订单</a></li>
			<li ${param.csstype eq 5 ? "class=current":"" }><a href="${ctx}/message/messageAction.action">留言</a></li>
			<li ${param.csstype eq 6 ? "class=current":"" }><a href="${ctx}/news/newsAction.action">新闻</a></li>
			<!--<c:if test="${sessionScope.user.status eq 0}"><li><a href="${sessionScope.ctx }/manage/onlineUsers/online_users.jsp">在线用户</a></li></c:if>-->
			<c:if test="${sessionScope.user.status eq 0}"><li><a href="${sessionScope.ctx }/loginMessage/loginMessageAction.action">登录记录</a></li></c:if>
		</ul>
	</div>
</div>
<div id="childNav">
	
	<div class="welcome wrap">
		管理员${sessionScope.user.username }您好，今天是<span id="times"></span>，欢迎回到管理后台。
	</div>
</div>
<div id="position" class="wrap">
	您现在的位置：<a href="index.html">易买网</a> &gt; 管理后台
</div>