<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@include file="/public/head.jspf"%>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="header_container">
				<!--头部开始-->
				<div class="top_bar clear">
					<!--头部小导航-->
					<div class="welcom fl">${sessionScope.consumer.cusername}，欢迎光临果蔬商城!</div>
					<ul class="top_links fr">
						<li class="highlight"><a href="${FAVS}/index.jsp">首页</a></li>
						<li><a href="${FAVS}/showCar.jsp">购物车</a></li>
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
					<!-- 购物车 -->
					<a class="minicart_link" href="showCar.jsp">
						<div class="minicart">
							<c:forEach items="${sessionScope.car.itemList}" var="item" >
								<c:set var="sum" value="${sum+item.gprice*item.number}"></c:set>
							</c:forEach>
							<span class="item"><b> ${sessionScope.car.itemList.size()} </b> 项/ </span> 
							<span class="price"> <b> ￥${sum}</b> </span> 
						</div>
					</a>
					<!-- 购物车结束 -->
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
			<!-- 面包屑 -->
			<ul class="breadcrumb">
				<li>
					<a href="index.jsp">首页</a>
				</li>
				<li class="active">
					<a href="#">${applicationScope.gname }</a>
				</li>
			</ul>
			
			<!-- 产品列表 -->
			<div class="products_list products_slider clear">
				<h2 class="sub_title">${applicationScope.gname }</h2>
				<ul id="first-carousel" class="first-and-second-carousel jcarousel-skin-tango">
					<!-- 循环开始 -->
	 				<c:forEach items="${applicationScope.goodsList }" var="goods">
						<li>
							<a href="${FAVS}/goods_get.action?gid=${goods.gid}" class="product_image"><img src="${FAVS}/image/${goods.gimage}" /></a>
							<div class="product_info">
								<h3><a href="#">商品名称：${goods.gname}</a></h3>
								<small>${goods.gintroduce}</small> </div>
							<div class="price_info">
								<button onclick="window.open('${FAVS}/item_addItem.action?goods.gid=${goods.gid}&number=1')"><span class="pr_add">添加购物车</span></button>
								<button class="price_add" title="" type="button"><span class="pr_price">￥${goods.gprice}</span></button>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!--产品列表结束  -->
			
			<!-- 导航栏 -->
			<div class="footer_container">
				<div class="footer">
					<ul class="footer_links">
						<li> <span>客户服务</span>
							<ul>
								<li><a href="#">帮助</a></li>
								<li><a href="#">速递</a></li>
								<li><a href="#">退换货</a></li>
								<li><a href="#">付款方式</a></li>
								<li><a href="#">订单跟踪</a></li>
								<li><a href="#">礼物包选项</a></li>
								<li><a href="#">国际服务</a></li>
								<li><a href="#">退运险</a></li>
							</ul>
						</li>
						<li> <span>个人账户</span>
							<ul>
								<li><a href="#">个人账户信息</a></li>
								<li><a href="#">用户密码</a></li>
								<li><a href="#">订单历史</a></li>
								<li><a href="#">付款方式</a></li>
								<li><a href="#">我的收货地址</a></li>
								<li><a href="#">我的通知</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>   
</body>
</html>
