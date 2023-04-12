<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-03-29
  Time: 오후 4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Directive Example3</h1>
<%
  int one = 1;
  int zero = 0;
%>
one과 zero의 사칙연산<p></p>
one+zero = <%=one + zero%><p></p>
one-zero = <%=one - zero%><p></p>
one*zero = <%=one * zero%><p></p>
one/zero = <%=one / zero%><p></p>

</body>
</html>
