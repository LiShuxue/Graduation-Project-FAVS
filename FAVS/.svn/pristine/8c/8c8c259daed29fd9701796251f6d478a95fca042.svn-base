<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- 引入公共的JSP片段 -->
	<%@ include file="/public/head.jspf"%>
	<style type="text/css">
		form div{
			margin: 5px;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			//对发布人的下拉列表框进行远程加载
			$('#cc').combobox({    
			    url:'consumer_query.action',    
			    valueField:'cid',    
			    textField:'cusername',
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
			
			$("textarea[name=btitle]").validatebox({
				required: true,
				missingMessage:'请输入求购标题'
			});
			
			
			//默认禁止验证
			$("#ff").form("disableValidation");
			//注册button的点击事件
			$("#submit").click(function(){
				//开启验证
				$("#ff").form("enableValidation");
				//如果验证成功则提交数据。validate做表单字段验证，当所有字段都有效的时候返回true。 
				if($("#ff").form("validate")){
					//调用submit方法提交数据
					$('#ff').form('submit', {
						url: 'buy_save.action',
						success: function(){
							//如果提交成功则关闭窗体
							parent.$("#win").window("close");
							//刷新页面
							var dg = parent.$("iframe[title='求购信息管理']").get(0).contentWindow.$("#dg");
							dg.datagrid("reload");
						}
					});
				}
			});
			//重置按钮事件
			$("#reset").click(function(){
				$("#ff").form("reset");
			});
		});
	</script>
</head>

<body>
<form title="添加求购信息" id="ff" method="post" enctype="multipart/form-data">
	<div>
		<label>发布人：</label> 
		<input id="cc" name="consumer.cid" />
	</div>
	<div>
		<label>发布时间：</label> 
		<input id="dt" type="text" name=btime></input> 
	</div>
	<div><label>求购标题:</label></div>
	<div>
		<textarea name="btitle" cols="40" rows="2"></textarea>
	</div>
	<div>
		<label>详细求购内容:</label>
		<textarea name="bcontent" cols="40" rows="8"></textarea>
	</div>
	<div>
		<a id="submit" href="#" class="easyui-linkbutton">添 加</a> 
		<a id="reset" href="#" class="easyui-linkbutton">重 置</a>
	</div>
</form>
</body>
</html>
