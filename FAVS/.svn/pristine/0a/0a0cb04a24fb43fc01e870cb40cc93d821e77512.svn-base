<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@ include file="/public/head.jspf" %>
	<style type="text/css">
		form div{
			margin: 5px
		}
	</style>
</head>

<body>
	<form id="ff" method="post" action="admins_update.action">   
	    <div>   
	        <label for="ausername">管理员用户名:</label>   
	        <input type="text" name="ausername" value="${admins.ausername}"/>   
	    </div>
	    <div>   
	        <label for="apassword">密码:</label>   
	        <input type="text" name="apassword" value="${admins.apassword}"/>   
	    </div>   
	    <div>   
	        <label for="asex">性别:</label>   
	       	<input type="radio" name="asex" value="男" checked="checked"/>男 
	       	<input type="radio" name="asex" value="女"/>女
	    </div> 
	    <div>   
	        <label for="aage">年龄:</label>   
	        <input type="text" name="aage" value="${admins.aage}"/>   
	    </div> 
	    <div>   
	        <label for="aphone">联系方式:</label>   
	        <input type="text" name="aphone" value="${admins.aphone}"/>   
	    </div> 
	    <div>
	    	<input type="hidden" name="aid" value="${admins.aid}"/>
	    	<input type="hidden" name="arole" value="${admins.arole}"/>
	    	<input type="submit" id="btn" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" value="更新"/>
	    </div>   
	</form> 
</body>
</html>
