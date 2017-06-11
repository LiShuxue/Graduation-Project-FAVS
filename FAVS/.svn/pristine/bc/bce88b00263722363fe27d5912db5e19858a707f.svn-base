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
						<li"><a href="car_querySupplierOrder.action?susername=${sessionScope.supplier.susername}">店铺订单</a></li>
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
		<!--导航栏结束-->
		<div class="section_container">
			<!-- 产品详情 -->
			<div id="product_detail">
				<!--详情左侧-->
				<div class="product_leftcol fl">
					<div id="jingdong">
						<div class="datu">
							<img src="${FAVS}/image/${goods.gimage}" />
							<div id="fangdajing"></div>
						</div>
						<div class="xiaotu">
							<div class="leftbut"></div>
							<div class="tu">
								<ul>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
									<li>
										<img src="${FAVS}/image/${goods.gimage}" />
									</li>
								</ul>
							</div>
							<div class="rightbut"></div>
						</div>
					</div>
				</div>
				<!--详情左侧结束-->
				<!--详情右侧-->
				<div class="product_rightcol fr">
					<div id="name">
						<h1>${goods.gname}</h1> <strong>${goods.gintroduce}</strong>
					</div>
					<ul id="summary">
						<li id="summary-price">
							<div class="dt">参&nbsp;考&nbsp;价：</div>
							<div class="dd"> <strong class="p-price" id="jd-price">￥${goods.gprice}&nbsp;${goods.gunit}</strong>
							</div>
						</li>
					</ul>
					<ul id="choose">
						<li id="choose-amount">
							<div class="dt">库存：${goods.gcount}</div><br>
						</li>
					</ul>
					<ul id="choose">
						<input type="button" value="更改商品信息" onclick="location.href='${FAVS}/supplier/updategoods.jsp'"/>
					</ul>
				</div>
				<!--详情右侧结束-->
			</div>
			<!--产品详情结束-->
		</div>
	</div>   
</body>
</html>
