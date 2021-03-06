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
			var dg = parent.$("iframe[title='新闻信息管理']").get(0).contentWindow.$("#dg");
			//对发布人的下拉列表框进行远程加载
			$('#cc').combobox({    
			    url:'supplier_query.action',    
			    valueField:'sid',    
			    textField:'susername',
			    panelHeight: 'auto',
			    panelWidth: 120,
			    width: 120,
			    editable: true,
			    required: true,
				missingMessage:'请选择发布人'
			});
			//发布时间
			$('#dt').datetimebox({    
			    value: '1/1/2016 0:0',    
			    required: true,    
			    showSeconds: false   
			});
			//完成数据的回显，及加载更新的对象的数据
			var rows = dg.datagrid("getSelections");
			$('#ff').form('load',{
				nid: rows[0].nid,
				ntitle: rows[0].ntitle,
				ncontent: rows[0].ncontent,
				ntime: rows[0].ntime,
				'supplier.sid': rows[0].supplier.sid
			});
		
			$("textarea[name=ntitle]").validatebox({
				required: true,
				missingMessage:'请输入新闻标题'
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
						url: 'news_update.action',
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
			<label>发布人：</label> 
			<input id="cc" name="supplier.sid" />
		</div>
		<div>
			<label>发布时间：</label> 
			<input id="dt" type="text" name=ntime></input> 
		</div>
		<div>
			<label>新闻标题:</label>
			<textarea name="ntitle" cols="40" rows="2"></textarea>
		</div>
		<div>
			<label>详细新闻内容:</label>
			<textarea name="ncontent" cols="40" rows="8"></textarea>
		</div>
	    <div>
	    	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">更新</a>
	    	<input type="hidden" name="nid"/>
	    </div>   
	</form> 
</body>
</html>
