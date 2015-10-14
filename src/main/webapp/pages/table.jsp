<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>数据查询</title>

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<%=request.getContextPath()%>/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="<%=request.getContextPath()%>/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="<%=request.getContextPath()%>/bower_components/datatables-responsive/css/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=request.getContextPath()%>/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=request.getContextPath()%>/bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


    <![endif]-->

<style type="text/css">
#side-menu li {
	border: none;
}
.tableShow {
	margin-left: -25px;
}

table{

	word-wrap:break-word;
}
</style>





</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0;background-color:rgba(176,226,255,0.2);">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="table.jsp">数据展示页面</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User
							Profile</a></li>
					<li class="divider"></li>
					<li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>
							Logout</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links --> </nav>

		<div style="margin-left: 4%; margin-right: 4%">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header" style="border: none">网络数据查询表格</h1>
				</div>
			</div>


			<div class="panel panel-default" style="border: none">
				<div class="panel-body">

					<form action="dataServlet" style="">
						<table id="tb" class="table">


							<div class="row" style="margin-bottom: 1%;">
								<div class="col-lg-4">
									<div class="input-group">

										<div class="col-lg-4">
											<input type="text" placeholder="查询名称" name="searchName0"
												class="form-control">
										</div>

										<div class="col-lg-3" style="margin-left: -25px;">
											<select name="rules0" class="form-control">
												<option value="1"> > </option>
												<option value="-1"> < </option>
												<option value="0" > = </option>
											</select>
										</div>
										<div class="col-lg-5" style="margin-left: -25px;">
											<input type="text" placeholder="查询结果" name="value0"
												class="form-control">
										</div>
									</div>
								</div>

								<div class="col-lg-4" style="margin-left: -25px;">
									<div class="input-group">

										<div class="col-lg-4" style="margin-left: -15px;">
											<input type="text" placeholder="查询名称" name="searchName1"
												class="form-control">
										</div>

										<div class="col-lg-3" style="margin-left: -25px;">
											<select name="rules1" class="form-control">
												<option value="1">></option>
												<option value="-1"><</option>
												<option value="0">=</option>
											</select>
										</div>
										<div class="col-lg-5" style="margin-left: -25px;">
											<input type="text" placeholder="查询结果" name="value1"
												class="form-control">
										</div>
									</div>
								</div>

								<div class="col-lg-4" style="margin-left: -25px;">
									<div class="input-group">

										<div class="col-lg-4" style="margin-left: -15px;">
											<input type="text" placeholder="查询名称" name="searchName2"
												class="form-control">
										</div>

										<div class="col-lg-3" style="margin-left: -25px;">
											<select name="rules2" class="form-control">
												<option value="1">></option>
												<option value="-1"><</option>
												<option value="0">=</option>
											</select>
										</div>
										<div class="col-lg-4" style="margin-left: -25px;">
											<input type="text" placeholder="查询结果" name="value2"
												class="form-control">
										</div>
										<div class="col-lg-1">
											<button type="button" class="btn btn-default btn-lg" onclick='additem1()'>
												<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
											</button>
										</div>
									</div>
								</div>

							</div>
							<!-- /.row -->
							<div id="add1"></div>



							<div class="row" style=" margin-top: 1%">


								<div class="col-lg-5">
									<div class="input-group">
									<div class="col-lg-3">
											<input type="text" class=" form-control" name = "dateName0"
												placeholder="日期查询名称">
										</div>
										<div class="col-lg-4 tableShow" >
											<input type="text" class=" form-control" name = "begin0"
												placeholder="2015-10-10 10：10:30">
										</div>
										<div class="col-lg-1" style="margin-left: -25px;">～</div>

										<div class="col-lg-4" style="margin-left: -25px;">
											<input type="text" class=" form-control" name = "end0"
												placeholder="2015-10-11 10：10:30">
										</div>
									</div>
								</div>
								
								<div class="col-lg-5 tableShow">
									<div class="input-group">
									<div class="col-lg-3">
											<input type="text" class=" form-control" name = "dateName1"
												placeholder="日期查询名称">
										</div>
										<div class="col-lg-4 tableShow">
											<input type="text" class=" form-control" name = "begin1"
												placeholder="2015-10-10 10：10:30">
										</div>
										<div class="col-lg-1" style="margin-left: -25px;">～</div>

										<div class="col-lg-4" style="margin-left: -25px;">
											<input type="text" class=" form-control" name = "end1"
												placeholder="2015-10-11 10：10:30">
										</div>
									</div>
								</div>

								<div class="col-lg-2" style="margin-left: -25px;">
									<div class="input-group">
		
										<div class="col-lg-3>
											<span class="input-group-btn">
												<button type="button" class="btn btn-default btn-lg"
													onclick='additem2()'>
													<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
												</button>
												<button class="btn btn-info" type="submit">提交查询</button>
											</span>
										</div>
									</div>
								</div>



							</div>
							<!-- /.row -->
							<div id="add2" ></div>
							

						</table>
					</form>


						<div class="row">
				<div class="col-lg-12">
				
				
						<div class="dataTable_wrapper">

						<table class="table  table-bordered table-hover" id="dataTables-example" style="table-layout:fixed">
							<thead>
								<tr>
									<th width="3%">id</th>
									<th width="7%">wid</th>
									<th width="5%">username</th>
									<th width="6%">repostscount</th>
									<th width="6%">commentscount</th>
									<th width="5%">createat</th>
<!-- 									<th width="3%">owid</th> -->
<!-- 									<th width="5%">ousername</th> -->
<!-- 									<th width="5%">favorited</th> -->
<!-- 									<th width="3%">geo</th> -->
<!-- 									<th width="3%">latitude</th> -->
<!-- 									<th width="3%">longitude</th> -->
									
									<th width="5%">source</th>
<!-- 									<th width="3%">visible</th> -->
<!--  									<th width="5%">lasttime</th>  -->
									<th width="13%">text</th>
									<th width="13%">originalpic</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="list" varStatus="status">
								<c:if test="${status.count % 3 == 1}">
								<tr class="info">
								</c:if>
								<c:if test="${status.count % 3 != 1}">
								<tr>
								</c:if>
			
										<td>${list.id}</td>
										<td>${list.wid}</td>
										<td>${list.username}</td>
										<td>${list.repostscount}</td>
										<td>${list.commentscount}</td>
										<td>${list.createat}</td>
<%-- 										<td>${list.owid}</td> --%>
<%-- 										<td>${list.ousername}</td> --%>
<%-- 										<td>${list.favorited}</td> --%>
<%-- 										<td>${list.geo}</td> --%>
<%-- 										<td>${list.latitude}</td> --%>
<%-- 										<td>${list.longitude}</td> --%>
										
										<td>${list.source}</td>
<%-- 										<td>${list.visible}</td> --%>
<%-- 										<td>${list.lasttime}</td> --%>
										<td>${list.text}</td>
										<td>${list.originalpic}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
</div>
</div>
					</div>

				</div>

			</div>

		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->


	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=request.getContextPath()%>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=request.getContextPath()%>/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="<%=request.getContextPath()%>/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=request.getContextPath()%>/dist/js/sb-admin-2.js"></script>



	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	
	
	<script type="text/javascript">
	
	$(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });

    });
	
	var count = 3;
	var temp = 2;
	var insertText = "";
	var insertDate = "";
	
	function additem1() {

		if (count % 3 == 0) {
			strbegin = "<div class=\"row\" style=\"margin-top: 1%\">";

		} else {
			strbegin = "";
		}
		if (count % 3 == 2) {
			strend = "</div>";
		} else {
			strend = "";
		}
		insertText += strbegin + "<div class=\"col-lg-4\" ><div class=\"input-group\"><div class=\"col-lg-4\" >"
				+ "<input type=\"text\" placeholder=\"查询名称\" class=\"form-control\" name=\"searchName"+count+"\"></div>"
				+ "<div class=\"col-lg-3\"><select name=\"rules"+count+"\" class=\"form-control\">"
				+ "<option value=\"1\"> > </option><option value=\"-1\"> < </option><option value=\"0\"> = </option></select></div>"
				+ "<div class=\"col-lg-5\"><input type=\"text\" placeholder=\"查询结果\" name=\"value"+count+"\" class=\"form-control\">"
				+ "</div></div></div>" + strend;
		count++;

		document.getElementById("add1").innerHTML = insertText;

	}
	function additem2 () {
		if (temp % 2 == 0) {
				strbegin = "<div class=\"row\" style=\"margin-top: 1%\">";
	
			} else {
				strbegin = "";
			}
			if (temp % 2 == 1) {
				strend = "</div>";
			} else {
				strend = "";
			}
		insertDate += strbegin + "<div class=\"col-lg-5\"><div class=\"input-group\"><div class=\"col-lg-3\">"+
					  "<input type=\"text\" class=\" form-control\" name = \"dateName+temp+\" placeholder=\"日期查询名称\">"+
					  "</div><div class=\"col-lg-4 tableShow\" ><input type=\"text\" class=\" form-control\" name = \"begin+temp+\" "+
					  "placeholder=\"2015-10-10 10：10:30\"></div><div class=\"col-lg-1\" style=\"margin-left: -25px;\">～</div>"+
					  "<div class=\"col-lg-4\" style=\"margin-left: -25px;\"><input type=\"text\" class=\" form-control\" name = \"end+temp+\" "+
					  "placeholder=\"2015-10-11 10：10:30\"></div></div></div>" + strend;
		temp++;
		document.getElementById("add2").innerHTML = insertDate;
	}
	

	</script>

</body>

</html>