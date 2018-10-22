<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>布局测试页</title>
    <script type="text/javascript" src="../../resources/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="../../resources/jquery.serialize.js"></script>
    <script src="../../resources/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <link href="../../resources/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../../resources/bootstrap-3.3.7/css/now-ui-dashboard.css?v=1.0.1" rel="stylesheet"/>
    <link href="../../resources/bootstrap-3.3.7/demo/demo.css" rel="stylesheet"/>
</head>

<body style="height: 100%">
<div class="wrapper" style="height: 100%">
    <div class="sidebar" data-color="orange">
        <div class="logo">
            <a href="#" class="simple-text logo-mini">
                CT
            </a>
            <a href="#" class="simple-text logo-normal">
                Creative Tim
            </a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav clickstyle">
                <li>
                    <a href="javascript:void(0)">
                        <i class="now-ui-icons users_single-02"></i>
                        <p>个人事务</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="inde">
                        <i class="now-ui-icons business_bank"></i>
                        <p>行政管理</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="inde">
                        <i class="now-ui-icons education_hat"></i>
                        <p>知识管理</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="inde">
                        <i class="now-ui-icons ui-1_email-85"></i>
                        <p>邮箱</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="inde">
                        <i>
                            <img src="../../resources/img/multiple-11.svg">
                        </i>
                        <p>人事管理</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="inde">
                        <i class="now-ui-icons ui-2_settings-90"></i>
                        <p>权限管理</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="inde">
                        <i class="now-ui-icons loader_gear spin"></i>
                        <p>系统设置</p>
                    </a>
                </li>
                <li>
                    <a href="../Login/login.jsp" target="inde">
                        <i class="now-ui-icons loader_gear spin"></i>
                        <p>登陆测试</p>
                    </a>
                </li>
                <li>
                    <a href="../../index.jsp" target="aaa">
                        <i class="now-ui-icons loader_gear spin"></i>
                        <p>index</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel"  style="height: 100%">
        <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <a class="navbar-brand" href="javascript:void(0)">左侧</a>
                </div>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <form>
                        <div class="input-group no-border">
                            <input type="text" value="" class="form-control" placeholder="Search...">
                            <span class="input-group-addon">
                                    <i class="now-ui-icons ui-1_zoom-bold"></i>
                                </span>
                        </div>
                    </form>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <i class="now-ui-icons media-2_sound-wave"></i>
                                <p>
                                    <span class="d-lg-none d-md-block">Stats</span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="now-ui-icons location_world"></i>
                                <p>
                                    <span class="d-lg-none d-md-block">Some Actions</span>
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <i class="now-ui-icons users_single-02"></i>
                                <p>
                                    <span class="d-lg-none d-md-block">Account</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="panel-header panel-header-sm">
        </div>
        <div class="content" style="height: 100%">
            <div class="row" style="height: 100%">
                <div class="col-md-12" style="height: 100%">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="title">
                                <font style="vertical-align: inherit;">测试页</font>
                            </h5>
                        </div>
                        <div class="card-body" style="height: 100%">
                            <div class="row"  style="height: 100%">
                                <iframe name="inde" frameborder="0" height="900px" width="100%" style="overflow: hidden"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                这是页脚
            </div>
        </footer>
    </div>
</div>
</body>
<script>
    //左侧导航选中变色
    $(".clickstyle li a").click(function () {
        $("li").removeClass("active");
        $(this).parent().addClass("active");
    })
</script>

<!--   Core JS Files   -->
<script src="../../resources/bootstrap-3.3.7/js/core/jquery.min.js"></script>
<script src="../../resources/bootstrap-3.3.7/js/core/popper.min.js"></script>
<script src="../../resources/bootstrap-3.3.7/js/core/bootstrap.min.js"></script>
<script src="../../resources/bootstrap-3.3.7/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- Chart JS -->
<script src="../../resources/bootstrap-3.3.7/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../../resources/bootstrap-3.3.7/js/plugins/bootstrap-notify.js"></script>
<script src="../../resources/bootstrap-3.3.7/js/now-ui-dashboard.js?v=1.0.1"></script>
<script src="../../resources/bootstrap-3.3.7/demo/demo.js"></script>
</html>