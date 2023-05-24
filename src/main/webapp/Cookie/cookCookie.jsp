<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cook Cookie</title>
</head>
<%
  String cookieName = "myCookie";
  Cookie cookie = new Cookie(cookieName, "Apple");
  cookie.setMaxAge(60);
  cookie.setValue("Melon");
  response.addCookie(cookie);
%>
<body>
<h1>쿠키를 만듭니다.</h1>
쿠키 내용은 <a href="tasteCookie.jsp">여기로</a>
</body>
</html>
