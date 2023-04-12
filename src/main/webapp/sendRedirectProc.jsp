<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-12
  Time: 오후 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String URL = "https://search.naver.com/search.naver?where=nexearch";
  String keyword = request.getParameter("word");

  URL += "&" + "query=" + URLEncoder.encode(keyword,"UTF-8");
  System.out.println(URL);
  response.sendRedirect(URL);
%>
</body>
</html>
