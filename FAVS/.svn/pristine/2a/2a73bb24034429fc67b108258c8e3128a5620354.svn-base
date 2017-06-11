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
			var dg = parent.$("iframe[title='供应商信息管理']").get(0).contentWindow.$("#dg");
			
			//完成数据的回显，及加载更新的对象的数据
			var rows = dg.datagrid("getSelections");
			$('#ff').form('load',{
				sid: rows[0].sid,
				susername: rows[0].susername,
				spassword: rows[0].spassword,
				ssex: rows[0].ssex,
				sage: rows[0].sage,
				sphone: rows[0].sphone,
				srole: rows[0].srole
			});
			
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
						url: 'supplier_update.action',
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
	    	<input type="hidden" name="sid"/>
	    	<input type="hidden" name="srole"/>
	    	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">更新</a>
	    </div>   
	</form> 
</body>
</html>
