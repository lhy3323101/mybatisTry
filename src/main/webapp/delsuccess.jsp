<%--
  Created by IntelliJ IDEA.
  User: Angel
  Date: 2018/9/29
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()  + path;
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application"/>
<html>
<head>
    <script> var contextPath = "${contextPath}";</script>
    <script type="text/javascript" src="<%= basePath%>/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="<%= basePath%>/js/insert.js"></script>
    <title>删除用户成功</title>
</head>
<body>
    <h2 align="center">删除用户成功</h2>
    <h4 align="center" id="sp">3秒后跳转到首页</h4>
</body>
</html>
