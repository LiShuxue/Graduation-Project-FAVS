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
			//自定义验证方法（验证文件是否是图片格式），向validatebox.defaults.rules中注册新函数(通过jquery插件机制)
			$.extend($.fn.validatebox.defaults.rules, {
				//函数名称：函数实现体（又是一个json对象，里面包括函数的实现和错误消息设置）
				format: {    
					//函数实现
			        validator: function(value,param){  
			        	//获取当前文件的后缀名
			        	var ext = value.substring(value.lastIndexOf('.') + 1);
			        	//获取支持的文件后缀名，然后比较
			        	var arr = param[0].split(",");
			        	for(var i=0; i<arr.length; i++){
			        		if(ext==arr[i])
			        			return true;
			        	} 
			            return false;    
			        },    
			        //错误消息提示
			        message: '文件必须为:{0}'   
			    }  
			});
			//对所属类别的下拉列表框进行远程加载
			$('#cc').combobox({    
			    url:'gtype_query.action',    
			    valueField:'gtypeid',    
			    textField:'gtypename',
			    panelHeight: 'auto',
			    panelWidth: 120,
			    width: 120,
			    editable: false,
			    required: true,
				missingMessage:'请选择所属类别'
			});
			//对供应商的下拉列表框进行远程加载
			$('#dd').combobox({    
			    url:'supplier_query.action',    
			    valueField:'sid',    
			    textField:'susername',
			    panelHeight: 'auto',
			    panelWidth: 120,
			    width: 120,
			    editable: false,
			    required: true,
				missingMessage:'请选择供应商'
			});
			
			
			$("input[name=gname]").validatebox({
				required: true,
				missingMessage:'请输入商品名称'
			});
			$("input[name=gprice]").numberbox({
				required: true,  //必填
				missingMessage:'请输入商品价格',
				min:0,    //最小值
    			precision:2, //精度，小数位2位
    			prefix: '$', //前缀
			});
			$("input[name=gunit]").validatebox({
				required: true,
				missingMessage:'请输入商品单位'
			});
			$("input[name=gcount]").numberbox({
				required: true,  //必填
				missingMessage:'请输入商品库存'
			});
			
			$("input[name='fileImage.upload']").validatebox({
				required: true,  //必填
				missingMessage:'请上传商品图片',
				validType:"format['gif,jpg,jpeg,png']"   //设置自定义验证
			});
			$("input[name='fileImage.upload']").change(function(){
				$(this).validatebox("validate");
			});
			
			$("textarea[name=gintroduce]").validatebox({
				required: true,
				missingMessage:'请输入商品介绍'
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
						url: 'goods_save.action',
						success: function(){
							//如果提交成功则关闭窗体
							parent.$("#win").window("close");
							//刷新页面
							var dg = parent.$("iframe[title='商品信息管理']").get(0).contentWindow.$("#dg");
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
<form title="添加商品" id="ff" method="post" enctype="multipart/form-data">
	<div>
		<label>所属类别：</label> 
		<input id="cc" name="gtype.gtypeid" />
	</div>
	<div>
		<label>商品名称:</label> <input type="text" name="gname" />
	</div>
	<div>
		<label>商品价格:</label> <input type="text" name="gprice" />
	</div>
	<div>
		<label>商品单位:</label> <input type="text" name="gunit" />
	</div>
	<div>
		<label>库存:</label> <input type="text" name="gcount" />
	</div>
	<div>
		<label>供应商：</label> 
		<input id="dd" name="supplier.sid" />
	</div>
	<div>
		<label>图片上传:</label> <input type="file" name="fileImage.upload" />
	</div>
	<div>
		<label>加入推荐:</label> 
		推荐:<input type="radio" name="recommendation" checked="checked" value="true" />  
		不推荐:<input type="radio" name="recommendation" value="false" /> 
	</div>
	<div>
		<label>商品描述:</label>
		<textarea name="gintroduce" cols="40" rows="8"></textarea>
	</div>
	<div>
		<a id="submit" href="#" class="easyui-linkbutton">添 加</a> 
		<a id="reset" href="#" class="easyui-linkbutton">重 置</a>
	</div>
</form>
</body>
</html>
