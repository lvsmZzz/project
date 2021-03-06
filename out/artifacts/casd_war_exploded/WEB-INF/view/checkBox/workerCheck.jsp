<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>首页</title>
<jsp:include page="../common/css.jsp"></jsp:include>
<jsp:include page="../common/scripts.jsp"></jsp:include>

<script
	src="<%=request.getContextPath()%>/res/admin/scripts/admin_grid.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/res/admin/scripts/ueditor/third-party/codemirror/codemirror.js"
	type="text/javascript"></script>

</head>
<body class="easyui-layout" style="overflow-y: hidden;" scroll="no">
		<div id="main" region="center"
			style="background: #eee; padding: 5px; overflow-y: hidden;">


			<div class="easyui-layout" fit="true">
				<div region="north" split="false" border="false"
					style="overflow: hidden; padding: 5px 5px 28px 5px;">
					<div class="easyui-panel" title="查询条件" style="margin-bottom: 5px;">

						<div class="search">
							<ul>
								<li><label>员工名称：</label><input type="text" name="username", id="username"
									class="easyui-validatebox" style="width: 120px" /></li>
								<li>&nbsp;&nbsp; <a class="easyui-linkbutton"
									data-options="iconCls:'icon-search'" href="javascript:;"
									id="btnSearch">查询</a></li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				
				<div region="center" split="false" border="false"
					style="overflow: hidden; padding: 0 5px 5px 5px" id="dataList">
					<table id="data" title="" fit="true"
						data-options="collapsible: true,pagination:true,onDblClickRow: onDblClickRow">
						<thead>
							<tr>
								<th id="ds" halign="center" field="userid" align="center"
									sortable="true" width="60px">员工编号</th>
								<th halign="center" field="username" align="center"
									sortable="true" width="120px">员工名称</th>
								<th halign="center" field="phone_number" align="center"
									sortable="true" width="120px">联系方式</th>	
								<th halign="center" field="sex" align="center" 
									sortable="true" width="120px" formatter="sex_formatter">性别</th>
									<th halign="center" field="department_name" align="center" 
									sortable="true" width="120px">部门</th>
								<!-- <th halign="center" field="center_name" align="center" 
									sortable="true" width="120px">中心</th>
								<th halign="center" field="company_name" align="center" 
									sortable="true" width="120px">公司</th> -->
								<th halign="center" field="department_id" align="center"  hidden="hidden"
									sortable="true" width="120px">部门id</th>	
							</tr>
						</thead>
					</table>
				</div>

			</div>
		</div>





	<script type="text/javascript">
		function operate_formatter(value, row, index) {
			var html = "";

			return html;
		}
		
		
		function sex_formatter(value, row, index) {
			if (value == 1) {
				return "男";
			} else if (value == 2) {
				return "女";

			}
		} 
		
		function onDblClickRow (rowIndex, rowData){ 
	       	
	        $(window.parent.window.Getdata(rowData));
	        //$(window.parent.$("#win").window("close"));
	    };


		$(function() {
			$("#data").admin_grid({
				queryBtn : "#btnSearch",
				excelBtn : "#btnExcel",

			});

		});
	</script>

</body>
</html>