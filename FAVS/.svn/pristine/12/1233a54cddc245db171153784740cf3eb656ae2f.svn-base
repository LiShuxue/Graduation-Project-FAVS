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
			$("input[name=susername]").validatebox({
				required: true,
				missingMessage:'请输入供应商名称'
			});
			
			$("input[name=spassword]").validatebox({
				required: true,
				missingMessage:'请输入密码'
			});
			
			$("input[name=sage]").validatebox({
				required: true,
				missingMessage:'请输入年龄'
			});
			
			$("input[name=sphone]").validatebox({
				required: true,
				missingMessage:'请输入联系方式'
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
						url: 'supplier_save.action',
						success: function(){
							//如果提交成功则关闭窗体
							parent.$("#win").window("close");
							//刷新页面 
							parent.$("iframe[title='供应商信息管理']").get(0).contentWindow.$("#dg").datagrid("reload");
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
	        <label for="susername">供应商用户名:</label>   
	        <input type="text" name="susername"/>   
	    </div>
	    <div>   
	        <label for="spassword">密码:</label>   
	        <input type="text" name="spassword"/>   
	    </div>   
	    <div>   
	        <label for="ssex">性别:</label>   
	       	<input type="radio" name="ssex" value="男" checked="checked"/>男 
	       	<input type="radio" name="ssex" value="女"/>女
	    </div> 
	    <div>   
	        <label for="sage">年龄:</label>   
	        <input type="text" name="sage"/>   
	    </div> 
	    <div>   
	        <label for="sphone">联系方式:</label>   
	        <input type="text" name="sphone"/>   
	    </div>   
	    <div>
	    	<input type="hidden" name="srole" value="2"/>
	    	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
	    </div>   
	</form> 
</body>
</html>
