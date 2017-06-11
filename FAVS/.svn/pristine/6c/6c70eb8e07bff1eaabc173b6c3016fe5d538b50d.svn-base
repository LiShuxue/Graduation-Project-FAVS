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
	<script type="text/javascript">
		$(function(){
			//ifram中的dg对象
			var dg = parent.$("iframe[title='购买者信息管理']").get(0).contentWindow.$("#dg");
			
			//完成数据的回显，及加载更新的对象的数据
			var rows = dg.datagrid("getSelections");
			$('#ff').form('load',{
				cid: rows[0].cid,
				cusername: rows[0].cusername,
				cpassword: rows[0].cpassword,
				csex: rows[0].csex,
				cage: rows[0].cage,
				cphone: rows[0].cphone,
				caddress: rows[0].caddress,
				crole: rows[0].crole
			});
			
			$("input[name=cusername]").validatebox({
				required: true,
				missingMescage:'请输入购买者名称'
			});
			
			$("input[name=cpassword]").validatebox({
				required: true,
				missingMescage:'请输入密码'
			});
			
			$("input[name=cage]").validatebox({
				required: true,
				missingMescage:'请输入年龄'
			});
			
			$("input[name=cphone]").validatebox({
				required: true,
				missingMescage:'请输入联系方式'
			});
			
			$("input[name=caddress]").validatebox({
				required: true,
				missingMescage:'请输入地址'
			});
			
			//窗体第一次弹出时不开启默认验证
			$("#ff").form("disableValidation");
			//注册button的点击事件
			$("#btn").click(function(){
				//开启验证
				$("#ff").form("enableValidation");
				//如果验证成功则提交数据。validate做表单字段验证，当所有字段都有效的时候返回true。 
				if($("#ff").form("validate")){
					//调用submit方法提交数据
					$('#ff').form('submit', {
						url: 'consumer_update.action',
						success: function(){
							//如果提交成功则关闭窗体
							parent.$("#win").window("close");
							//刷新页面 
							dg.datagrid("reload");
						}
					});
				}
			});
		});
	</script>
</head>

<body>
	<form id="ff" method="post">   
	    <div>   
	        <label for="cusername">购买者用户名:</label>   
	        <input type="text" name="cusername"/>   
	    </div>
	    <div>   
	        <label for="cpassword">密码:</label>   
	        <input type="text" name="cpassword"/>   
	    </div>   
	    <div>   
	        <label for="csex">性别:</label>   
	       	<input type="radio" name="csex" value="男" checked="checked"/>男 
	       	<input type="radio" name="csex" value="女"/>女
	    </div> 
	    <div>   
	        <label for="cage">年龄:</label>   
	        <input type="text" name="cage"/>   
	    </div> 
	    <div>   
	        <label for="cphone">联系方式:</label>   
	        <input type="text" name="cphone"/>   
	    </div> 
	    <div>   
	        <label for="caddress">地址:</label>   
	        <input type="text" name="caddress"/>   
	    </div> 
	    <div>
	    	<input type="hidden" name="cid"/>
	    	<input type="hidden" name="crole"/>
	    	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">更新</a>
	    </div>   
	</form> 
</body>
</html>
