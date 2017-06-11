<%@page import="com.favs.bean.Item"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@include file="/public/head.jspf"%>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="header_container">
				<!--头部开始-->
				<div class="top_bar clear">
					<!--头部小导航-->
					<div class="welcom fl">${sessionScope.consumer.cusername}，欢迎光临果蔬商城!</div>
					<ul class="top_links fr">
						<li><a href="${FAVS}/index.jsp">首页</a></li>
						<li class="highlight"><a href="${FAVS}/showCar.jsp">购物车</a></li>
						<li><a href="car_queryOrder.action?cusername=${sessionScope.consumer.cusername}">历史订单</a></li>
						<li><a href="${FAVS}/consumer/consumerInfo.jsp">个人中心</a></li>
					</ul>
					<!--头部小导航结束-->
					<!-- logo -->
					<h1 class="logo clear fl">
                       <a href="index.jsp">
                           <img src="images/logo.png" />
                       </a>
                   	</h1>
					<!-- 小购物车 -->
					<a class="minicart_link" href="showCar.jsp">
						<div class="minicart">
							<c:forEach items="${sessionScope.car.itemList}" var="item" >
								<c:set var="sum" value="${sum+item.gprice*item.number}"></c:set>
							</c:forEach>
							<span class="item"><b> ${sessionScope.car.itemList.size()} </b> 项/ </span> 
							<span class="price"> <b> ￥${sum}</b> </span> 
						</div>
					</a>
					<!-- 小购物车结束 -->
					<!-- 搜索框 -->
					<div class="header_search">
						<form action="goods_queryByName.action" method="get">
							<div class="form-search ">
								<input name="gname" value="请输入商品名称" class="input-text" type="text" />
								<button type="submit" title="Search"></button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- 头部结束 -->
		<!-- 导航栏 -->
		<div class="navigation_container">
			<div class="nav">
				<ul class="primary_nav">
					<li><a href="index.jsp">水果</a></li>
					<li><a href="index2.jsp">蔬菜</a></li>
				</ul>
			</div>
		</div>
		<!--导航栏结束-->
		<div class="section_container">
			<!-- 购物车 -->
			<div id="shopping_cart">
				<div class="message success">我的购物车</div>
				<table class="data-table cart-table" cellpadding="0" cellspacing="0">
					<tr>
						<th class="align_center" width="15%">商品编号</th>
						<th class="align_left" width="35%" colspan="2">商品内容</th>
						<th class="align_center" width="15%">销售价格</th>
						<th class="align_center" width="15%">数量</th>
						<th class="align_center" width="20%">小计</th>
					</tr>
					<c:forEach items="${sessionScope.car.itemList}" var="item">
						<tr>
							<td class="align_center"><a href="#" class="edit">${item.goods.gid}</a>
							</td>
							<td width="80px"><img src="${FAVS}/image/${item.goods.gimage}" width="80" height="80" />
							</td>
							<td class="align_left"><a class="pr_name" href="#">${item.gname}</a>
							</td>
							<td class="align_center vline"><span class="price">${item.gprice}</span>
							</td>
							<td class="align_center vline">
								<div class="wrap-input">
									<input class="text" style="height: 20px;" value="${item.number}">		
								</div>
							</td>
							<td class="align_center vline"><span class="price">${item.gprice*item.number}</span>
							</td>
						</tr>
					</c:forEach>
				</table>
				<!-- 结算 -->
				<div class="totals">
					<table id="totals-table">
						<tbody>
							<tr>
								<td width="60%" colspan="1" class="align_left"><strong>小计</strong>
								</td>
								<td class="align_right" style=""><strong><span
										class="price">￥${sessionScope.car.cartotal}</span>
								</strong>
								</td>
							</tr>
							<tr>
								<td width="60%" colspan="1" class="align_left">运费</td>
								<td class="align_right" style=""><span class="price">￥0.00</span>
								</td>
							</tr>
							<tr>
								<td width="60%" colspan="1" class="align_left total"><strong>总计</strong>
								</td>
								<td class="align_right" style=""><span class="total"><strong>￥${sessionScope.car.cartotal}</strong>
								</span>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="action_buttonbar">
						<a href="${FAVS}/consumer/confirm.jsp">
							<button type="button" title="" class="checkout fr" style="background-color: #f38256;">订单确认</button>
						</a>
						<a href="${FAVS}/item_clear.action">
							<button type="button" title="" class="fr">清空购物车</button>
						</a>
						<a href="${FAVS}/index.jsp">
							<button type="button" title="" class="continue fr">继续购物</button>
						</a>
						<div style="clear:both"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
