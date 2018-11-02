<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>用户管理</dt>
				<dd><em><a href="${ctx}/user/userAction!addEdit.action">新增</a></em><a href="${ctx}/user/userAction.action">用户管理</a></dd>
				
				<dt>商品信息</dt>
				<dd><em><a href="${sessionScope.ctx}/manage/product/productCategory_add.jsp?csstype=3">新增</a></em><a href="${sessionScope.ctx}/product_category/productCategoryAction.action">分类管理</a></dd>
				<dd><em><a href="${sessionScope.ctx}/product/productAction!add.action">新增</a></em><a href="${sessionScope.ctx}/product/productAction.action">商品管理</a></dd>
				<dt>订单管理</dt>
				<dd><a href="${sessionScope.ctx}/order/orderAction.action?csstype=4">订单管理</a></dd>
				<dt>留言管理</dt>
				<dd><a href="${ctx}/message/messageAction.action">留言管理</a></dd>
				<dt>新闻管理</dt>
				<dd><em><a href="${ctx}/news/newsAction!addEdit.action">新增</a></em><a href="${ctx}/news/newsAction.action">新闻管理</a></dd>
				<c:if test="${sessionScope.user.status eq 0 }">
				<dt>权限管理</dt>
				<dd><a href="${ctx}/role/roleAction.action">设置权限</a></dd>
				</c:if>
			</dl>
		</div>
	</div>
