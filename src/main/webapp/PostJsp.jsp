<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-26
  Time: 오후 2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Post servlet 방식</h1>
<form method="post" action="postServlet">
    아이디 : <input name="id"><p/>
    패스워드 : <input type="password" name="pwd"><p/>
    이메일 : <input type="email" name="email"><p/>
    <button type="submit">가입</button>
</form>
</body>
</html>
