<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<%@ include file="/public/head.jspf" %>
  </head>
  
  <body>
	<div class="wrapper">
		<!--头部开始-->
			<div class="header">
				<div class="header_container">
					<div class="top_bar clear">
						<!--头部小导航-->
						<div class="welcom fl">${sessionScope.supplier.susername}，欢迎光临果蔬商城! </div>
						<ul class="top_links fr">
							<li><a href="${FAVS}/supplier/index.jsp">我的店铺主页</a></li>
							<li><a href="${FAVS}/supplier/addgoods.jsp">增加店铺商品</a></li>
							<li><a href="${FAVS}/supplier/supplierInfo.jsp">个人中心</a></li>
							<li class="highlight"><a href="car_querySupplierOrder.action?susername=${sessionScope.supplier.susername}">店铺订单</a></li>
						</ul>
						<!--头部小导航结束-->
						<!-- logo -->
						<h1 class="logo clear fl">
	                       <a href="${FAVS}/supplier/index.jsp">
	                           <img src="${FAVS}/images/logo.png" />
	                       </a>
	                   	</h1>
					</div>
				</div>
			</div>
			<!-- 头部结束 -->
			<!-- 导航栏 -->
			<div class="navigation_container">
				<div class="nav">
					<ul class="primary_nav">
						<li><a href="index.jsp">历史订单</a></li>
					</ul>
				</div>
			</div>
			<div class="navigation_container">
				<table class="data-table cart-table" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center">订单号</td>
						<td align="center">商品内容</td>
						<td align="center">总价</td>
						<td align="center">地址</td>
						<td align="center">状态</td>
						<td align="center">删除</td>
						<td align="center">发货</td>
					</tr>
					<c:forEach items="${sessionScope.list}" var="car" varStatus="i">
						<tr>
							<td class="align_center"><a href="#" class="edit">${car.carid}</a></td>
							<td>
								<table>
								<c:forEach items="${sessionScope.iteList[i.index]}" var="item">
									<tr>
										<td width="30%">${item.gname }</td>
										<td width="30%">${item.number }斤</td>
									</tr>
								</c:forEach>
								</table>
							</td>
							<td>${car.cartotal}元</td>
							<td>${car.caddress}</td>
							<td>${sessionScope.stalist[i.index]}</td>
							<td><a href="car_deleteSupplierOrder.action?carid=${car.carid}&susername=${car.susername}" class="remove"></a></td>
							<td align="center">
								<c:if test="${sessionScope.stalist[i.index]=='已支付'}">
									<a href="car_deliverGoods.action?carid=${car.carid}&susername=${car.susername}" style="color:blue;">发货</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
  </body>
</html>
