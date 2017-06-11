<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <%@include file="/public/head.jspf" %>
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
					<!-- 购物车结束 -->
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
                <li >
                    <a href="#">确认订单信息</a>
                </li>
                <li class="active">
                    <a href="#">完成订单</a>
                </li>
            </ul>
            <!-- 确认订单信息 -->
            <div class="pay-step">
                <!-- 订购人确认 -->
                <div class="person-check check">
                    <h1>您的订单已经生成</h1>
                    <div class="person-checkinner">
                        <div><span>订单号</span>：<span>${sessionScope.oldCar.carid}</span></div>
                        <div><span>收货人</span>：<span>${sessionScope.oldCar.cusername}</span></div>
                        <div><span>送货地址</span>：<span>${sessionScope.oldCar.caddress}</span></div>
                        <div><span>邮政编码</span>：<span>${sessionScope.oldCar.carpost}</span></div>
                        <div><span>支付金额</span>：<span>${sessionScope.oldCar.cartotal}</span></div>
                    </div>
                </div>
                <div class="select-bank">
                	<form action="${FAVS}/pay_goBank.action?carid=${sessionScope.oldCar.carid}" method="post">
	                    <h1>请选择支付银行</h1>
	                    <div>
	                        <ul>
	                           <c:forEach items="${applicationScope.bankList}" var="name">
		                            <li>
		                                <input type="radio" name="pd_FrpId" value="${fn:substring(name,0,fn:indexOf(name,'.'))}" />&nbsp;
		                                <img src="${FAVS}/images/bank/${name}" />
		                            </li>
	                           </c:forEach>
	                        </ul>
	                    </div>
	                    <div class="clear"></div>
	                    <div class="reminder"><span>请确保您的银行卡已开通网银支付功能，否则没有办法完成支付&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <a href="">如何开通?</a></div>
	                    <div class="pay-submit">
	                    	<span style="font-size: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入您的支付密码：<input name="paypassword" type="password" style="height: 25px"/></span>
	                    	<div class="pay-inner">
	                    		<input type="submit" style="width: 80px; height: 40px;" value="确认支付" />
	                    	</div>
	            		</div>	
                    </form>
                </div>
            </div>
            
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
