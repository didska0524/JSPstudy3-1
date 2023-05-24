<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% session.invalidate(); %>
<script>
  alert("로그아웃 되었습니다.");
  location.href="sessionLogin.jsp";
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
