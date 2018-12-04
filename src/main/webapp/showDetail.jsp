<%--
  Created by IntelliJ IDEA.
  User: Angel
  Date: 2018/9/30
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>确认用户资料</title>
</head>
<body>
    <h2 align="center">用户数据</h2>
    <form action="<%= basePath%>/user/delete" method="post">
        <table align="center" border="1" style="border-color: cornflowerblue">
            <tr>
                <th>id</th>
                <th>姓名</th>
                <th>年龄</th>
            </tr>
            <tr>
                <td><input readonly name="id" value="${resultUser.id}"></td>
                <td><input readonly name="name" value="${resultUser.name}"></td>
                <td><input readonly name="age" value="${resultUser.age}"></td>
            </tr>
        </table>
        <div align="center">
            <input type="submit" value="删除">
        </div>
    </form>
</body>
</html>
