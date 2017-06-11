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
		<div class="navigation_container"></div>
		<!--导航栏结束-->
		
		<div class="section_container">
			<table border="1">
				<tr>
					<td width="100px">新闻标题：</td>
					<td width="90%">${news.ntitle}</td>
				</tr>
				<tr>
					<td>新闻内容：</td>
					<td>${news.ncontent}</td>
				</tr>
				<tr>
					<td>发布时间：</td>
					<td>${news.ntime}</td>
				</tr>
				<tr>
					<td>发布人：</td>
					<td>${news.supplier.susername}</td>
				</tr>
			</table>
		</div>
	</div>   
</body>
</html>
