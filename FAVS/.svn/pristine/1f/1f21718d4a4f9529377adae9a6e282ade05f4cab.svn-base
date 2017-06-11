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
						<div class="welcom fl">${sessionScope.consumer.cusername}，欢迎光临果蔬商城!</div>
						<ul class="top_links fr">
							<li><a href="${FAVS}/index.jsp">首页</a></li>
							<li><a href="${FAVS}/showCar.jsp">购物车</a></li>
							<li><a href="car_queryOrder.action?cusername=${sessionScope.consumer.cusername}">历史订单</a></li>
							<li class="highlight"><a href="${FAVS}/consumer/consumerInfo.jsp">个人中心</a></li>
						</ul>
						<!--头部小导航结束-->
						<!-- logo -->
						<h1 class="logo clear fl">
	                       <a href="${FAVS}/index.jsp">
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
						<li><a href="${FAVS}/consumer/consumerInfo.jsp">修改个人信息</a></li>
						<li style="background-color:#f38256"><a href="${FAVS}/consumer/buyInfo.jsp">发布求购信息</a></li>
					</ul>
				</div>
			</div>
			<div class="navigation_container">
				<form action="buy_saveBuy.action" method="post">  
					<div>
						<label for="cusername">发布人：</label> 
						<input type="text" name="cusername" value="${sessionScope.consumer.cusername}"/> 
					</div>
					<br/>
					<div>
						<label for="btime">发布时间：</label> 
						<input type="text" name="btime" value="2016-6-1"></input> 
					</div>
					<br/>
					<div><label>求购标题:</label></div>
					<div>
						<textarea name="btitle" cols="40" rows="2"></textarea>
					</div>
					<br/>
					<div><label>详细求购内容:</label></div>
					<div>
						<textarea name="bcontent" cols="40" rows="8"></textarea>
					</div>
					<br/>
					<div>
						<input type="submit" value="发布"/> 
					</div>
					<br/>
				</form> 
			</div>
		</div>
  </body>
</html>
