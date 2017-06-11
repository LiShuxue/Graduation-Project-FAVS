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
			var dg = parent.$("iframe[title='商品类别信息管理']").get(0).contentWindow.$("#dg");
			
			//完成数据的回显，及加载更新的对象的数据
			var rows = dg.datagrid("getSelections");
			$('#ff').form('load',{
				gtypeid: rows[0].gtypeid,
				gtypename: rows[0].gtypename,
				hot: rows[0].hot
			});
			$("input[name=gtypename]").validatebox({
				required: true,
				missingMessage:'请输入类别名称'
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
						url: 'gtype_update.action',
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
	        <label for="gtypename">商品类别:</label>   
	        <input type="text" name="gtypename"/>   
	    </div>   
	    <div>   
	        <label for="hot">热点:</label>   
	       	<input type="radio" name="hot" value="true"/>热点 
	       	<input type="radio" name="hot" value="false" checked="checked"/>非热点
	    </div>
	        
	    <div>
	    	<input type="hidden" name="gtypeid"/>
	    	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">更新</a>
	    </div>   
	</form> 
</body>
</html>
