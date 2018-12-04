<%--
  Created by IntelliJ IDEA.
  User: Angel
  Date: 2018/9/30
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%= basePath%>">
</head>
<body>
    <h2 align="center">删除用户</h2>
    <form method="post" id="formdel" action="">
        <table align="center" border="1">
            <tr>
                <th>姓名:</th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <th>年龄:</th>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="提交"></td>
            </tr>
        </table>
    </form>

</body>
</html>
