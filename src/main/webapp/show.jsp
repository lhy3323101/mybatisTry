<%--
  Created by IntelliJ IDEA.
  User: Angel
  Date: 2018/9/28
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application"/>
<html>
<head>
    <base href="<%=basePath%>/">
    <title>UserList</title>
    <script> var contextPath = "${contextPath}";</script>
    <meta content="text/html" charset="UTF-8" http-equiv="Content-Type">
    <script type="text/javascript" src="<%= basePath%>/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="<%= basePath%>/js/certain.js"></script>
</head>
<body>
    <h2 align="center">用户列表</h2>
    <form action="index.jsp" method="post">
        <table border="1" align="center">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>age</th>
            </tr>
            <c:choose>
                <c:when test="${not empty userList}">
                    <c:forEach items="${userList}" var="user" varStatus="vs">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.age}</td>
                            <td><input type="button" value="操作" onclick="certain(this)"></td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="3">无数据</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </table>
    </form>
    <div align="center">
        <a href="<%= basePath%>index.jsp">返回首页</a>
    </div>
</body>
</html>
