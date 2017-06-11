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
					<div class="welcom fl">${sessionScope.supplier.susername}，欢迎光临果蔬商城!</div>
					<ul class="top_links fr">
						<li class="highlight"><a href="${FAVS}/supplier/index.jsp">我的店铺主页</a></li>
						<li><a href="${FAVS}/supplier/addgoods.jsp">增加店铺商品</a></li>
						<li><a href="${FAVS}/supplier/supplierInfo.jsp">个人中心</a></li>
						<li><a href="car_querySupplierOrder.action?susername=${sessionScope.supplier.susername}">店铺订单</a></li>
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
		<div class="navigation_container"></div>
		<!--导航栏结束-->
		
		<div class="section_container">
			<table border="1">
				<tr>
					<td width="100px">求购标题：</td>
					<td width="90%">${buy.btitle}</td>
				</tr>
				<tr>
					<td>求购内容：</td>
					<td>${buy.bcontent}</td>
				</tr>
				<tr>
					<td>发布时间：</td>
					<td>${buy.btime}</td>
				</tr>
				<tr>
					<td>发布人：</td>
					<td>${buy.consumer.cusername}</td>
				</tr>
			</table>
		</div>
	</div>   
</body>
</html>
