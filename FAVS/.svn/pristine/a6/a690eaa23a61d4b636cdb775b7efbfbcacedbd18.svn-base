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
						<div class="welcom fl">${sessionScope.consumer.cusername}，欢迎光临果蔬商城! </div>
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
						<li style="background-color:#f38256"><a href="${FAVS}/consumer/consumerInfo.jsp">修改个人信息</a></li>
						<li><a href="${FAVS}/consumer/buyInfo.jsp">发布求购信息</a></li>
					</ul>
				</div>
			</div>
			<div class="navigation_container">
				<form action="consumer_update2.action" method="post">  
					<br/> 
				    <div>   
				        <label for="cusername">用户名：</label>   
				        <input type="text" name="cusername" value="${sessionScope.consumer.cusername}"/>   
				    </div>
				    <br/>
				    <div>   
				        <label for="cpassword">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>   
				        <input type="text" name="cpassword" value="${sessionScope.consumer.cpassword}"/>   
				    </div>
				    <br/>   
				    <div>   
				        <label for="csex">性&nbsp;&nbsp;&nbsp;&nbsp;别：</label>   
				       	<input type="radio" name="csex" value="男" checked="checked"/>男 
				       	<input type="radio" name="csex" value="女"/>女
				    </div> 
				    <br/>
				    <div>   
				        <label for="cage">年&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>   
				        <input type="text" name="cage" value="${sessionScope.consumer.cage}"/>   
				    </div> 
				    <br/>
				    <div>   
				        <label for="cphone">电&nbsp;&nbsp;&nbsp;&nbsp;话：</label>   
				        <input type="text" name="cphone" value="${sessionScope.consumer.cphone}"/>   
				    </div> 
				    <br/>
				    <div>   
				        <label for="caddress">地&nbsp;&nbsp;&nbsp;&nbsp;址：</label>   
				        <input type="text" name="caddress" value="${sessionScope.consumer.caddress}" style="width:350px"/>   
				    </div> 
				    <br/>
				    <div>
				    	<input type="hidden" name="cid" value="${sessionScope.consumer.cid}"/>
				    	<input type="hidden" name="crole" value="${sessionScope.consumer.crole}"/>
				    	<input type="submit" value="更新个人信息"/>
				    </div>  
				    <br/>
				    <div>
				    	<a href="confirm.jsp" style="color: blue">点击返回订单确认</a>
				    </div> 
				    <br/>
				    <div>
				    	<a href="${FAVS}/index.jsp" style="color: blue">${success}</a>
				    </div>
				    <br/>
				</form> 
			</div>
		</div>
  </body>
</html>
