<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="PM APP"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <asset:stylesheet href="bootstrap-css/css/bootstrap.css" />
    <asset:stylesheet href="styles.css" />
    <asset:javascript src="allmanifest.js"/>
    <asset:javascript src="main.js"/>
    <asset:stylesheet href="pm-admin.css" />
    <asset:stylesheet href="font-awesome/css/font-awesome.min.css" />


    <g:layoutHead/>
</head>

<body ng-app="PmApp">
<div id="wrapper">

    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/pmproject/#/dashboard">PM APP</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li class="active"><a href="/pmproject/#/dashboard"><i class="fa fa-dashboard"></i> Dashboard</a></li>
                <li><a href="/pmproject/#/projects"><i class="fa fa-bar-chart-o"></i> Projects</a></li>
                <li><a href="/pmproject/#/tasks"><i class="fa fa-table"></i> Tasks</a></li>
                <li><a href="/pmproject/#/tasks/search"><i class="fa fa-table"></i> Search Tasks</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right navbar-user">

                <li class="dropdown user-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Ahmed Ali <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                        <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">

        <g:layoutBody/>

    </div><!-- /#page-wrapper -->

</div><!-- /#wrapper -->

<!-- JavaScript -->
<asset:javascript src="bootstrap.js"/>

</body>
</html>

