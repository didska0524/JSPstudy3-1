<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String value1 = (String)session.getAttribute("logID");
  String value2 = (String)session.getAttribute("logPW");

  out.println("session name: logID , value : " + value1 + "<br/>");
  out.println("session name: logPW , value : " + value2 + "<br/>");
%>
세션 ID : <%= session.getId() %>
</body>
</html>
