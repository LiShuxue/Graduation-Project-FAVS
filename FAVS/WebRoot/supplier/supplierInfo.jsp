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
						<div class="welcom fl">${sessionScope.supplier.susername}，欢迎光临果蔬商城!</div>
						<ul class="top_links fr">
							<li><a href="${FAVS}/supplier/index.jsp">我的店铺主页</a></li>
							<li><a href="${FAVS}/supplier/addgoods.jsp">增加店铺商品</a></li>
							<li class="highlight"><a href="${FAVS}/supplier/supplierInfo.jsp">个人中心</a></li>
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
			<div class="navigation_container">
				<div class="nav">
					<ul class="primary_nav">
						<li style="background-color:#f38256"><a href="${FAVS}/supplier/supplierInfo.jsp">修改个人信息</a></li>
						<li><a href="${FAVS}/supplier/newsInfo.jsp">发布新闻</a></li>
					</ul>
				</div>
			</div>
			<div class="navigation_container">
				<form action="supplier_update2.action" method="post">  
					<br/> 
				    <div>   
				        <label for="susername">用户名：</label>   
				        <input type="text" name="susername" value="${sessionScope.supplier.susername}"/>   
				    </div>
				    <br/>
				    <div>   
				        <label for="spassword">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>   
				        <input type="text" name="spassword" value="${sessionScope.supplier.spassword}"/>   
				    </div>
				    <br/>   
				    <div>   
				        <label for="ssex">性&nbsp;&nbsp;&nbsp;&nbsp;别：</label>   
				       	<input type="radio" name="ssex" value="男" checked="checked"/>男 
				       	<input type="radio" name="ssex" value="女"/>女
				    </div> 
				    <br/>
				    <div>   
				        <label for="sage">年&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>   
				        <input type="text" name="sage" value="${sessionScope.supplier.sage}"/>   
				    </div> 
				    <br/>
				    <div>   
				        <label for="sphone">电&nbsp;&nbsp;&nbsp;&nbsp;话：</label>   
				        <input type="text" name="sphone" value="${sessionScope.supplier.sphone}"/>   
				    </div> 
				    <br/>
				    <div>
				    	<input type="hidden" name="sid" value="${sessionScope.supplier.sid}"/>
				    	<input type="hidden" name="srole" value="${sessionScope.supplier.srole}"/>
				    	<input type="submit" value="修改个人信息"/>
				    </div>   
				    <br/>
				    <div>
				    	<a href="${FAVS}/supplier/index.jsp" style="color: blue">${success2}</a>
				    </div>
				    <br/>
				</form> 
			</div>
		</div>
  </body>
</html>
