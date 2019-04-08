<%--
  Created by IntelliJ IDEA.
  User: Angel
  Date: 2018/9/29
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()  + path;
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>新增用户</title>
</head>
<body>
    <h2 align="center">新增用户</h2>
    <form name="form1" id="form1" action="<%= basePath%>/user/insertCheck" method="post">
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
                <td colspan="2"><input type="submit" value="提交"></td>
            </tr>
        </table>
    </form>
</body>
</html>
