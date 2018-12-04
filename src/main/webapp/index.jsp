
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()  + path;
%>

<html>
<body>
<h2 align="center">Hello World!</h2>

<div align="center">
    <a href="<%= basePath%>/user/list">查看全部用户</a>
    &nbsp;&nbsp;&nbsp;
    <a href="<%= basePath%>/insert.jsp">新增用户</a>
</div>
</body>
</html>
