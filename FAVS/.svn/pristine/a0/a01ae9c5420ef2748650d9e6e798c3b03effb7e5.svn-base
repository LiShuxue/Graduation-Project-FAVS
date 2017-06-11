<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<%@ include file="/public/head.jspf" %>
  	<script type="text/javascript">
		$(function(){
			
			//对所属类别的下拉列表框进行远程加载
			$('#cc').combobox({    
			    url:'gtype_query.action',    
			    valueField:'gtypeid',    
			    textField:'gtypename',
			    panelHeight: 'auto',
			    panelWidth: 120,
			    width: 120,
			    editable: false
			});
			//对供应商的下拉列表框进行远程加载
			$('#dd').combobox({    
			    url:'supplier_query.action',    
			    valueField:'sid',    
			    textField:'susername',
			    panelHeight: 'auto',
			    panelWidth: 120,
			    width: 120,
			    editable: false
			});
		
		});
	</script>
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
							<li class="highlight"><a href="${FAVS}/supplier/addgoods.jsp">增加店铺商品</a></li>
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
			<div class="navigation_container">
				<div class="nav">
					<ul class="primary_nav">
						<li><a href="${FAVS}/supplier/updategoods.jsp">增加商品</a></li>
					</ul>
				</div>
			</div>
			<div class="navigation_container">
				<form action="goods_addGoods.action" method="post" id="ff" enctype="multipart/form-data">  
					<br/> 
				    <div>
						<label>所属类别：</label> 
						<input id="cc" name="gtype.gtypeid" />
					</div>
					<br/> 
					<div>
						<label>商品名称：</label> <input type="text" name="gname" />
					</div>
					<br/> 
					<div>
						<label>商品价格：</label> <input type="text" name="gprice" />
					</div>
					<br/> 
					<div>
						<label>商品单位：</label> <input type="text" name="gunit" />
					</div>
					<br/> 
					<div>
						<label>库存：</label> <input type="text" name="gcount" />
					</div>
					<br/> 
					<div>
						<label>供应商：</label> 
						<input id="dd" name="supplier.sid" />
					</div>
					<br/> 
					<div>
						<label>图片上传：</label> <input type="file" name="fileImage.upload" />
					</div>
					<br/> 
					<div>
						<label>加入推荐：</label> 
						推荐:<input type="radio" name="recommendation" checked="checked" value="true" />  
						不推荐:<input type="radio" name="recommendation" value="false" /> 
					</div>
					<br/> 
					<label>商品描述：</label>
					<div>
						<textarea name="gintroduce" cols="40" rows="8"></textarea>
					</div>
					<br/> 
				    <div>
				    	<input type="submit" value="增加商品"/>
				    	<input type="button" value="重 置" onclick="$('#ff').form('reset')">
				    </div>
				    <br/>
				</form> 
			</div>
		</div>
  </body>
</html>
