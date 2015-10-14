<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Data-Show</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


    <![endif]-->

    <style type="text/css">

        #side-menu li{
            border: none;
        }

    </style>





</head>

<body>

<div id="wrapper" >

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color:rgba(176,226,255,0.2);">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html" >Data-Show</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right" >

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

    </nav>

    <!--去掉id="page-wrapper"，改变布局,左边无菜单栏 -->
    <div style="margin-left: 4%;margin-right: 4%">
        <div class="row">
            <div class="col-lg-12" >
                <h1 class="page-header" style="border: none">Tables</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default" style="border: none">
                    <div class="panel-body">


                        <div class="row" style="margin-bottom:1%;">
                            <div class="col-lg-3">
                                <div class="input-group">
                                 <span class="input-group-addon">wid</span>
                                    <input type="text" class="form-control" placeholder="Search for..." id="condition1">
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">username</span>
                                    <input type="text" class="form-control" placeholder="Search for..." id="condition2">
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">owid</span>
                                    <input type="text" class="form-control" placeholder="Search for..." id="condition3">
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">ousername</span>
                                    <input type="text" class="form-control" placeholder="Search for..." id="condition4">
                                </div>
                            </div>

                        </div><!-- /.row -->



                        <div class="row" style="margin-bottom:2%;margin-top: 1%">
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">repostscount</span>

                                    <div class="col-lg-4">
                                        <select class=" form-control">
                                            <option> > </option>
                                            <option> < </option>
                                            <option> = </option>
                                        </select>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class=" form-control"  placeholder="Search for..." id="condition5">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">commentscount</span>

                                    <div class="col-lg-4">
                                        <select class=" form-control">
                                            <option > > </option>
                                            <option> < </option>
                                            <option> = </option>
                                        </select>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class=" form-control"  placeholder="Search for..." id="condition6">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">createat</span>

                                    <div class="col-lg-4">
                                        <select class=" form-control">
                                            <option> > </option>
                                            <option> < </option>
                                            <option> = </option>
                                        </select>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class=" form-control"  placeholder="Search for..." id="condition7">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-1"></div>
                            <div class="col-lg-2">
                                <div class="input-group">
                                    <span class="input-group-btn">
                                    <button class="btn btn-info" type="button" onclick="getData()">提交查询</button>
                                  </span>
                                </div>
                            </div>
                        </div><!-- /.row -->

                        <div class="dataTable_wrapper">

                            <table class="table  table-bordered table-hover" >
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>wid</th>
                                    <th>username</th>
                                    <th>repostscount</th>
                                    <th>commentscount</th>
                                    <th width="10%">text</th>
                                    <th>createat</th>
                                    <th>owid</th>
                                    <th>ousername</th>
                                    <th>favorited</th>
                                    <th>geo</th>
                                    <th>latitude</th>
                                    <th>longitude</th>
                                    <th>originalpic</th>
                                    <th>source</th>
                                    <th>visible</th>
                                    <th>lasttime</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td align="center">1</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123</td>
                                </tr>
                                <tr class="info">
                                    <td align="center">2</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123</td>
                                </tr>
                                <tr>
                                    <td align="center">3</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123</td>
                                </tr>
                                <tr class="info">
                                    <td align="center">4</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123123123</td>
                                    <td><span >first description</span></td>
                                    <td>admin</td>
                                    <td>asdfasdf</td>
                                    <td>asdfasdf</td>
                                    <td>123</td>
                                </tr>
                                </tbody>
                            </table>

                            <nav>
                                <ul class="pager">
                                    <li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
                                    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
                                </ul>
                            </nav>
                            </div>

                        </div>

                    </div>

                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>



<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });

    });


    function update(obj){
        var tds=$(obj).parent().parent().find('td');
        $('#number').val(tds.eq(0).text());
        $('#imageshow').attr('src', $('#imageresource').attr('src'));
        $('#describe').val(tds.eq(2).text());
        $('#tableModal').modal('show');

    }

    function getData () {
        alert("123");
        var c1 = $('#condition1').val();
        var c2 = $('#condition2').val();
        var c3 = $('#condition3').val();
        var c4 = $('#condition4').val();
        var c5 = $('#condition5').val();
        var c6 = $('#condition6').val();
        console.log(c1,c2,c3,c4,c5,c6);
        window.location = "";
    }


</script>


</body>

</html>
