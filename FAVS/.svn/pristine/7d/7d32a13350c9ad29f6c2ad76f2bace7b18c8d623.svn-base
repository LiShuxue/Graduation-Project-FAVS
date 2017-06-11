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
			var dg = parent.$("iframe[title='商品信息管理']").get(0).contentWindow.$("#dg");
			
			//完成数据的回显，及加载更新的对象的数据
			var rows = dg.datagrid("getSelections");
			//console.log(rows);
			$('#ff').form('load',{
				gid: rows[0].gid,
				gname: rows[0].gname,
				gimage: rows[0].gimage,
				gintroduce: rows[0].gintroduce,
				gprice: rows[0].gprice,
				gunit: rows[0].gunit,
				gcount: rows[0].gcount,
				recommendation: rows[0].recommendation,
				'gtype.gtypeid': rows[0].gtype.gtypeid,
				'supplier.sid': rows[0].supplier.sid
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
			
			$("textarea[name=gintroduce]").validatebox({
				required: true,
				missingMessage:'请输入商品介绍'
			});
			
			//默认禁止验证
			$("#ff").form("disableValidation");
			//注册button的点击事件
			$("#btn").click(function(){
				//开启验证
				$("#ff").form("enableValidation");
				//如果验证成功则提交数据。validate做表单字段验证，当所有字段都有效的时候返回true。 
				if($("#ff").form("validate")){
					//调用submit方法提交数据
					$('#ff').form('submit', {
						url: 'goods_update.action',
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
	<form title="修改商品" id="ff" method="post" enctype="multipart/form-data">
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
			<label>加入推荐:</label> 
			推荐:<input type="radio" name="recommendation" checked="checked" value="true" />  
			不推荐:<input type="radio" name="recommendation" value="false" /> 
		</div>
		<div>
			<label>商品描述:</label>
			<textarea name="gintroduce" cols="40" rows="8"></textarea>
		</div>
	    <div>
	    	<input type="hidden" name="gid"/>
	    	<input type="hidden" name="gimage"/>
	    	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">更新</a>
	    </div>   
	</form> 
</body>
</html>
