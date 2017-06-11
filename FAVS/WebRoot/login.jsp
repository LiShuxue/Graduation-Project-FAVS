<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@include file="/public/head.jspf"%>
	<style type="text/css">
		#dd div{
			padding: 5px;
		}
	</style>
<body>
	<div class="wrapper">
		<!--头部开始-->
		<div class="header">
			<div class="header_container">
				<div class="top_bar clear">
					<!--头部小导航-->
					<div class="welcom fl">欢迎光临果蔬商城!</div>
					<!-- logo -->
					<h1 class="logo clear fl">
                    	<img src="images/logo.png" />
                   	</h1>
				</div>
			</div>
		</div>
		<!-- 头部结束 -->
		<div class="section_container">
			<div id="dd" class="action_buttonbar" style="text-align:center; height: 280px">
				<form method="post" action="${FAVS}/user_login.action">
					<br/>
					<br/>
					<div>
						<label for="login" style="font-size: 18">用户名：</label> 
						<input type="text" name="username" value="" style="height: 20"/>
					</div>
					<br/>
					<div>
						<label for="pass" style="font-size: 18">密&nbsp;&nbsp;&nbsp;码：</label> 
						<input type="password" name="password" value="" style="height: 20"/>
					</div>
					<br/>
					<div style="color: red">
						${error}  
					</div>
					<div>
						<input type="submit" value="登陆" style="width:60px;height:30px" />
						<input type="button" value="注册" onclick="window.open('index.jsp')" style="width:60px;height:30px" />
					</div>
			   </form>
			   <div style="clear:both"></div>
			</div>
		</div>
	</div>
</body>
</html>
