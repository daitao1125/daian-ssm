<%--
  Created by IntelliJ IDEA.
  User: daixiangtao
  Date: 2018/9/30
  Time: 上午9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .item {
        text-align:center;
    }
    .item.lable {
        display:inline-block;
        width:100px;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
        min-height:1px;
        height:58px;
    }
    .item.inputs {
        height: 58px;
        display:inline-block;
        width:200px;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
        min-height:1px;
        horiz-align: left;
        vertical-align: center;
    }
    .mgmt-top {
        height: 58px;
        line-height: 58px;
        border-bottom: 1px solid #f0f3f5;
        vertical-align: center;
        horiz-align: center;
    }
    .mydiv{
        width:300px;
        height:200px;
        position:absolute;
        left:50%;
        top:50%;
        margin:-100px 0 0 -150px
    }
</style>
<html>
<head>
    <title>登录</title>
</head>
<body >
login page
<div class="mydiv">
    <form name="login_form" action="/login/login.action" method="post">
        <table  >
            <tr>
                <td>用户名:</td>
                <td><input type="text" name="userName" ></td>
            </tr>
            <tr>
                <td>密&nbsp;码:</td>
                <td><input type="password" name="password" ></td>
            </tr>
            <tr align="center">
                <td colspan="2"> <input style="width:80px;height: 50px;" type="submit" value="登录"></td>
            </tr>
        </table>

    </form>

</div>

</body>
</html>
