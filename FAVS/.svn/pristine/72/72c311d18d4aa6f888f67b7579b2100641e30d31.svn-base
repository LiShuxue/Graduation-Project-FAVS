<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<%@ include file="/public/head.jspf" %>
  </head>
  
  <body>
	<div class="wrapper">
			<div class="header">
				<div class="header_container">
					<!--头部开始-->
					<div class="top_bar clear">
						<!--头部小导航-->
						<div class="welcom fl">${sessionScope.supplier.susername}，欢迎光临果蔬商城! </div>
						<ul class="top_links fr">
							<li class="highlight"><a href="${FAVS}/supplier/index.jsp">我的店铺主页</a></li>
							<li><a href="${FAVS}/supplier/addgoods.jsp">增加店铺商品</a></li>
							<li><a href="${FAVS}/supplier/supplierInfo.jsp">个人中心</a></li>
							<li><a href="car_querySupplierOrder.action?susername=${sessionScope.supplier.susername}">店铺订单</a></li>
						</ul>
						<!-- logo -->
						<h1 class="logo clear fl">
	                       <a href="${FAVS}/supplier/index.jsp">
	                           <img src="${FAVS}/images/logo.png" />
	                       </a>
	                   	</h1>
	                   	<div style="position: fixed; top:50px; left:1210px; margin:0px; text-align: center;">
							<table border="1" cellpadding="0" cellspacing=5" bgcolor="#ffd3ff">
								<tr>
									<td style="color: blue">买家求购</td>
								</tr>
								<c:forEach items="${applicationScope.buyList}" var="buy">
									<tr>
										<td style="color: blue"><a href="buy_get.action?bid=${buy.bid}">${buy.btitle}</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- 头部结束 -->

			<!-- 产品列表 -->
			<!-- 大循环开始 -->
 			<c:forEach items="${applicationScope.bigList2 }" var="list">
				<div class="products_list products_slider clear">
					<h2 class="sub_title">${list[0].gtype.gtypename}</h2>
					<ul id="first-carousel" class="first-and-second-carousel jcarousel-skin-tango">
						<!-- 小循环开始 -->
		 				<c:forEach items="${list }" var="goods">
							<li>
								<a href="goods_get2.action?gid=${goods.gid}" class="product_image"><img src="${FAVS}/image/${goods.gimage}" /></a>
								<div class="product_info">
									<h3><a href="#">商品名称：${goods.gname}</a></h3>
									<small>${goods.gintroduce}</small> </div>
								<div class="price_info">
									<button class="price_add" title="" type="button"><span class="pr_price">￥${goods.gprice}</span></button>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</c:forEach>
			<!--产品列表结束  -->
		</div>
  </body>
</html>
