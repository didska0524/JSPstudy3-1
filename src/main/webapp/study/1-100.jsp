<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-03-29
  Time: 오후 3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int sum = 0;

    for(int i = 1; i<=100; i++){
        sum += i;
    }
%>
<h1>1부터 100까지의 합: <%= sum %> </h1>
</body>
</html>
