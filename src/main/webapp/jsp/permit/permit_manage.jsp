<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/28
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>权限管理</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="../../resources/js_sunxin/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="/resources/js_sunxin/permit-trees/layui-v2.4.4/layui/css/layui.css">
    <script src="/resources/js_sunxin/permit-trees/layui-v2.4.4/layui/layui.js"></script>
    <link rel="stylesheet" href="/resources/js_sunxin/bootstrap-4.1.3-dist/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="/resources/js_sunxin/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>

    <style>
        .breadcrumb li a{
            color: #f96332;

        }
    </style>
</head>
<body style="margin: 0px;padding: 0;width: 100%;height: 100%;">
<div class="container">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">
                <a class="" href="/jsp/permit/permitRole.jsp" target="permit">角色权限管理</a>
            </li>
            <li class="breadcrumb-item">
                <a class="" href="/jsp/permit/permitRoleUser.jsp" target="permit">角色用户管理</a>
            </li>
            <li class="breadcrumb-item">
                <a class="" href="/jsp/permit/permitAddRole.jsp" target="permit">添加角色</a>
            </li>
            <li class="breadcrumb-item">
                <a class="" href="/jsp/permit/permitDept.jsp" target="permit">部门管理</a>
            </li>
        </ul>
</div>
<div style="border-top: 1px solid #e2e2e2;height: 100%;width: 100%;">
    <iframe class="main" name="permit" id="iframe" scrolling="0" frameborder="0"  width="100%" height="100%" onload="this.height=100"></iframe>
</div>
</body>
<script type="text/javascript">
    function reinitIframe(){
        var iframe = document.getElementById("iframe");
        try{
            var bHeight = iframe.contentWindow.document.body.scrollHeight;
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
            var height = Math.max(bHeight, dHeight);
            iframe.height = height;
            console.log(height);
        }catch (ex){}
    }
    window.setInterval("reinitIframe()", 200);
</script>
</html>
