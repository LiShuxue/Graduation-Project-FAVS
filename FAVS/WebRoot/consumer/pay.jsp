<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/public/head.jspf"%>
<script type="text/javascript">
	var time=5;
	function number(){
		setTimeout("number()", 1000);
		if(time>0){
			var obj = document.getElementById("number");
			obj.innerHTML = "";
			obj.innerHTML = time;
			time--;
			
		}else{
			location.href="index.jsp";
		}
	}
</script>
</head>
<body onload="number()">
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
                       <a href="${FAVS}/index.jsp">
                           <img src="${FAVS}/images/logo.png" />
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
					<!-- 小购物车结束 -->
					<!-- 搜索框 -->
					<div class="header_search">
						<form action="${FAVS}/goods_queryByName.action" method="get">
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
					<li><a href="${FAVS}/index.jsp">水果</a></li>
					<li><a href="${FAVS}/index2.jsp">蔬菜</a></li>
				</ul>
			</div>
		</div>
		<!--导航栏结束-->

		<div class="section_container">
			<div class="pay-skip" align="center">
				<h1 align="center">支付成功！感谢您在本商城购物!</h1>
				<div class="payskip-inner">
					<div>
						<span>订单号：</span><strong>&nbsp;${sessionScope.oldCar.carid}</strong><span>&nbsp;&nbsp;&nbsp;&nbsp;&#91;请您记住这个号码，以便在查询时使用&#93;</span>
					</div>
					<div>
						<span>支付银行：</span><img class="zfyh" src="${FAVS}/images/bank/${sessionScope.pd_FrpId}.gif" alt="" />
					</div>
					<div>
						<span>支付金额：</span><strong>${sessionScope.oldCar.cartotal}</strong>
					</div>
					<span id="number" style="font-size: 20px; color: red"></span>后跳到商城首页！
				</div>
			</div>

			<div class="footer_container">

				<div class="footer">
					<ul class="footer_links">
						<li><span>客户服务</span>
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
						<li><span>个人账户</span>
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
