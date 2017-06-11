<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@ include file="/public/head.jspf"%>
	
	<style type="text/css">
		#menu{
			width: 200px;
		}
		#menu ul{
			list-style: none;
			padding: 0px;
			margin: 0px;
		}
		#menu ul li{
			border-bottom: 1px solid #fff;
		}
		#menu ul li a{
			/*设置a标签的宽和内间距，需要先转换为块级元素*/
			display: block;
			background-color: #008792;
			color: #fff;
			padding: 5px;
			text-decoration: none;
		}
		#menu ul li a:hover{
			background-color: #00a6ac;
		}
	</style>
	
	<script type="text/javascript">
		$(function(){
			$("a[title]").click(function(){
				var text = $(this).text();
				var href = $(this).attr("title");
				//1.判断当前右边是否已有相应的tab
				//2.如果没有则创建一个新的tab，否则切换到当前的tab
				if($("#tt").tabs("exists",text)) {
					$("#tt").tabs("select",text);
				} else {
					$("#tt").tabs("add",{
						title: text,
						closable: true,
						content: '<iframe title=' + text + ' src=' + href + ' frameborder="0" width="100%" height="100%" />',
					});
				}
				
			});
		});
	</script>
</head>
<body class="easyui-layout">

	<div data-options="region:'north',title:'管理员${admins.ausername}，欢迎来到果蔬商城后台管理系统',split:true" style="height:100px;">
		<div><img src="${FAVS}/images/logo.png"/></div>
	</div>
	
	<div data-options="region:'west',title:'系统操作',split:true" style="width:200px;">
		<!-- 此处显示的是系统菜单 -->
		<div id="menu" class="easyui-accordion" data-options="fit:true">   
		 	<div title="基本操作">   
		     	<ul>
					<li><a href="#" title="send_supplier_query.action">供应商信息管理</a></li>
					<li><a href="#" title="send_consumer_query.action">购买者信息管理</a></li>
					<li><a href="#" title="send_gtype_query.action">商品类别信息管理</a></li>
					<li><a href="#" title="send_goods_query.action">商品信息管理</a></li>
					<li><a href="#" title="send_buy_query.action">求购信息管理</a></li>
					<li><a href="#" title="send_news_query.action">新闻信息管理</a></li>
				</ul>
		 	</div>   
		 	<div title="其他操作">   
		        <ul>
					<li><a href="#" title="send_admins_update.action">修改个人信息</a></li>
				</ul>  
		    </div>     
		</div>  
	</div>
	
	<div data-options="region:'center',title:'后台操作页面'" style="padding:1px;background:#fff;">
		<div id="tt" class="easyui-tabs" data-options="fit:true">   
		    <div title="系统缺省页面" style="padding:10px;">   
				<img alt="默认图片" src="${FAVS}/images/desktop.jpg">
		    </div>  
		</div>  
	</div>
	<div id="win" data-options="collapsible:false,minimizable:false,maximizable:false,modal:true"></div>
</body>
</html>
