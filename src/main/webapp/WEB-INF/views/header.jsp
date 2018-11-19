<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<head>--%>

    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>

    <%--<title>SB Admin - Dashboard</title>--%>

    <%--<!-- Bootstrap core CSS-->--%>
    <%--<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>

    <%--<!-- Custom fonts for this template-->--%>
    <%--<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">--%>

    <%--<!-- Page level plugin CSS-->--%>
    <%--<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">--%>

    <%--<link href="/resources/css/fullcalendar.css" rel="stylesheet" >--%>
    <%--<link href="/resources/css/fullcalendar.print.min.css" rel="stylesheet" media="print" >--%>


    <%--<!-- Custom styles for this template-->--%>
    <%--<link href="/resources/css/sb-admin.css" rel="stylesheet">--%>
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css" rel="stylesheet"/>--%>
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css" rel="stylesheet"/>--%>
    <%--<style>--%>



        <%--#calendar {--%>
            <%--max-width: 900px;--%>
            <%--margin: 0 auto;--%>
        <%--}--%>

    <%--</style>--%>
<%--</head>--%>

<%--<body id="page-top">--%>

<%--<nav class="navbar navbar-expand navbar-dark bg-dark static-top">--%>

    <%--<a class="navbar-brand mr-1" href="/">Start Bootstrap</a>--%>

    <%--<button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">--%>
        <%--<i class="fas fa-bars"></i>--%>
    <%--</button>--%>

    <%--<!-- Navbar Search -->--%>
    <%--<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">--%>
        <%--<div class="input-group">--%>
            <%--<input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">--%>
            <%--<div class="input-group-append">--%>
                <%--<button class="btn btn-primary" type="button">--%>
                    <%--<i class="fas fa-search"></i>--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>

    <%--<!-- Navbar -->--%>
    <%--<ul class="navbar-nav ml-auto ml-md-0">--%>
        <%--<li class="nav-item dropdown no-arrow mx-1">--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--<i class="fas fa-bell fa-fw"></i>--%>
                <%--<span class="badge badge-danger">9+</span>--%>
            <%--</a>--%>
            <%--<div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">--%>
                <%--<a class="dropdown-item" href="#">Action</a>--%>
                <%--<a class="dropdown-item" href="#">Another action</a>--%>
                <%--<div class="dropdown-divider"></div>--%>
                <%--<a class="dropdown-item" href="#">Something else here</a>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li class="nav-item dropdown no-arrow mx-1">--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--<i class="fas fa-envelope fa-fw"></i>--%>
                <%--<span class="badge badge-danger">7</span>--%>
            <%--</a>--%>
            <%--<div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">--%>
                <%--<a class="dropdown-item" href="#">Action</a>--%>
                <%--<a class="dropdown-item" href="#">Another action</a>--%>
                <%--<div class="dropdown-divider"></div>--%>
                <%--<a class="dropdown-item" href="#">Something else here</a>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li class="nav-item dropdown no-arrow">--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--<i class="fas fa-user-circle fa-fw"></i>--%>
            <%--</a>--%>
            <%--<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">--%>
                <%--<a class="dropdown-item" href="/settings">Settings</a>--%>
                <%--<div class="dropdown-divider"></div>--%>
                <%--<a class="dropdown-item" href="logout" data-toggle="modal" data-target="#logoutModal">Logout</a>--%>
            <%--</div>--%>
        <%--</li>--%>
    <%--</ul>--%>

<%--</nav>--%>

<%--<div id="wrapper">--%>
    <%--<ul class="sidebar navbar-nav">--%>
        <%--<li class="nav-item active">--%>
            <%--<a class="nav-link" href="/">--%>
                <%--<i class="fas fa-fw fa-tachometer-alt"></i>--%>
                <%--<span>Dashboard</span>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%--<li class="nav-item dropdown">--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--<i class="fas fa-fw fa-folder"></i>--%>
                <%--<span>Pages</span>--%>
            <%--</a>--%>
            <%--<div class="dropdown-menu" aria-labelledby="pagesDropdown">--%>
                <%--<h6 class="dropdown-header">Login Screens:</h6>--%>
                <%--<a class="dropdown-item" href="login">Login</a>--%>
                <%--<a class="dropdown-item" href="register">Register</a>--%>
                <%--<a class="dropdown-item" href="admin/add/instructor">add instructor</a>--%>
                <%--<a class="dropdown-item" href="admin/add/type">add type</a>--%>
                <%--<a class="dropdown-item" href="admin/add/session">add session</a>--%>
                <%--<a class="dropdown-item" href="forgot-password">Forgot Password</a>--%>
                <%--<div class="dropdown-divider"></div>--%>
                <%--<h6 class="dropdown-header">Other Pages:</h6>--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="404">404 Page</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="blank">Blank Page</a>&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li class="nav-item">--%>
            <%--<a class="nav-link" href="charts.html">--%>
                <%--<i class="fas fa-fw fa-chart-area"></i>--%>
                <%--<span>Charts</span></a>--%>
        <%--</li>--%>
        <%--<li class="nav-item">--%>
            <%--<a class="nav-link" href="tables.html">--%>
                <%--<i class="fas fa-fw fa-table"></i>--%>
                <%--<span>Tables</span></a>--%>
        <%--</li>--%>
    <%--</ul>--%>
        <%--<c:if test="${not empty message}">--%>
            <%--<div class="alert alert-success">--%>
                    <%--${message}--%>
            <%--</div>--%>
        <%--</c:if>--%>


<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>

    <link href="/resources/css/calendar.css" rel="stylesheet">
    <!-- Bootstrap core CSS-->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

    <link href='/resources/fullcalendar-3.9.0/fullcalendar.min.css' rel='stylesheet' />
    <link href='/resources/fullcalendar-3.9.0/fullcalendar.print.min.css' rel='stylesheet' media='print' />
    <%--<script src='/resources/fullcalendar-3.9.0/lib/moment.min.js'></script>--%>
    <%--<script src='/resources/fullcalendar-3.9.0/lib/jquery.min.js'></script>--%>
    <%--<script src='/resources/fullcalendar-3.9.0/fullcalendar.min.js'></script>--%>

    <%--<script src="/resources/js/calendar.js"></script>--%>


</head>

<body id="page-top">

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="/">Strona startowa</a>
    ${user.name}

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <%--<div class="input-group">--%>
            <%--<input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">--%>
            <%--&lt;%&ndash;<div class="input-group-append">&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;<button class="btn btn-primary" type="button">&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;&lt;%&ndash;&lt;%&ndash;<i class="fas fa-search"></i>&ndash;%&gt;&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;</button>&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</div>--%>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
        <%--<li class="nav-item dropdown no-arrow mx-1">--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--<i class="fas fa-bell fa-fw"></i>--%>
                <%--<span class="badge badge-danger">9+</span>--%>
            <%--</a>--%>
            <%--&lt;%&ndash;<div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="#">Action</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="#">Another action</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="dropdown-divider"></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="#">Something else here</a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</li>--%>
        <%--<li class="nav-item dropdown no-arrow mx-1">--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--<i class="fas fa-envelope fa-fw"></i>--%>
                <%--<span class="badge badge-danger">7</span>--%>
            <%--</a>--%>
            <%--&lt;%&ndash;<div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="#">Action</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="#">Another action</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="dropdown-divider"></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="dropdown-item" href="#">Something else here</a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</li>--%>
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="/update">Edytuj profil</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/logout" data-toggle="modal" data-target="#logoutModal">Wyloguj</a>
            </div>
        </li>
    </ul>

</nav>

<div id="wrapper">
    <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="/">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Wszystkie zajecia</span>
            </a>
        </li>
        <security:authorize access="hasRole('ADMIN')">

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-fw fa-folder"></i>
                <span>Strony</span>
            </a>

            <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                <h6 class="dropdown-header">Login Screens:</h6>
                <a class="dropdown-item" href="/login">Login</a>
                <a class="dropdown-item" href="/register">Register</a>
                <a class="dropdown-item" href="/admin/add/instructor">dodawanie instruktora</a>
                <a class="dropdown-item" href="/admin/add/type">dodawanie typu zajecie</a>
                <a class="dropdown-item" href="/admin/add/session">dodawanie zajec</a>

                <div class="dropdown-divider"></div>
                <h6 class="dropdown-header">Other Pages:</h6>
                <%--<a class="dropdown-item" href="404">404 Page</a>--%>
                <%--<a class="dropdown-item" href="blank">Blank Page</a>--%>
            </div>

        </li>
        </security:authorize>

        <li class="nav-item">
            <a class="nav-link" href="/user/all">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Twoje zajecia</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/membership">
                <i class="fas fa-fw fa-table"></i>
                <span>Karnet</span></a>
        </li>
    </ul>
    <c:if test="${not empty message}">
    <div class="alert alert-success">
            ${message}
    </div>
    </c:if>
