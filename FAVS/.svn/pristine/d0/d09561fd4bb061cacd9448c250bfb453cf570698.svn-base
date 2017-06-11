<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <%@include file="/public/head.jspf" %>	
  </head>
  <body>
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
            <!-- 购物车 -->
            <ul class="breadcrumb">
                <li>
                    <a href="#">加入购物车</a>
                </li>
                <li class="active">
                    <a href="#">确认订单信息</a>
                </li>
                <li >
                    <a href="#">完成订单</a>
                </li>
            </ul>
            <!-- 确认订单信息 -->
            <div class="check-stup">
            	<!-- 商品确认 -->
                <div class="pro-check check ">
                    <h1>确认订单信息</h1>
	                <table class="data-table cart-table" cellpadding="0" cellspacing="0">
						<tr>
							<th class="align_center" width="10%">商品编号</th>
							<th class="align_left" width="35%" colspan="2">商品名称</th>
							<th class="align_center" width="10%">销售价格</th>
							<th class="align_center" width="20%">数量</th>
							<th class="align_center" width="15%">小计</th>
						</tr>
						<c:forEach items="${sessionScope.car.itemList}" var="item">
						<tr lang="${item.goods.gid}">
							<td class="align_center"><a href="#" class="edit">${item.goods.gid}</a>
							</td>
							<td width="80px"><img src="${FAVS}/image/${item.goods.gimage}" width="80" height="80" />
							</td>
							<td class="align_left"><a class="pr_name" href="#">${item.gname}</a>
							</td>
							<td class="align_center vline">￥ ${item.gprice}</td>
							<td class="align_center vline">${item.number}</td>
							<td class="align_center vline">￥${item.gprice*item.number}</td>
						</tr>
						</c:forEach>
					</table>
					
                    <div class="sum"> 
                        <div class="fr"><span>总计：</span><b>￥${car.cartotal}</b></div>
                    </div>
                   
                </div>
                <!-- 订购人确认 -->
                <form action="${FAVS}/car_save.action" method="post">
	                <div class="person-check check">
	                    <h1>订购人信息</h1>
	                    <div class="person-checkinner">
	                        <div>
	                        	<label>配送姓名:</label>
	                        	<input type="text" name="cusername" value="${sessionScope.consumer.cusername}" readonly="readonly"/>
	                        </div>
	                        <div>
	                        	<label>联系方式:</label>
	                        	<input type="text" name="cphone" value="${sessionScope.consumer.cphone}" readonly="readonly"/>
	                        </div>
	                        <div>
	                        	<label>区域邮编:</label>
	                        	<input type="text" name="carpost" />
	                        </div>
	                        <div style="float:left">
	                        	<label>配送地址:</label>
	                        	<input type="text" name="caddress" value="${sessionScope.consumer.caddress}" style="width:350px" readonly="readonly"/>
	                        </div>
	                        <div style="float:left;">
	                        	<a href="consumerInfo.jsp" style="color: blue">修改</a>
	                        </div>
	                        <div>
	                        	&nbsp;
	                        </div>
	                    </div>
	                </div>
	                <!-- 卖家留言 -->
	                <div class="person-check check">
	               		<h1>卖家留言</h1>
	                	<textarea style="margin: 5px;" name="carremark" cols="120" rows="2">输入留言信息</textarea>
		                <div class="submit">
		                   	<input type="submit" class="sub-logo fr" style="margin: 0px;padding: 0px; border: 0px;" value="确认无误,购买" />
		                </div>
	                </div>
                </form>
           </div>
       </div>
       <!-- 确认订单信息结束 -->
  </body>
</html>
