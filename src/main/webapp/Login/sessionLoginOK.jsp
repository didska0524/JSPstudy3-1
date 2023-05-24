<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String id = (String) session.getAttribute("idKey");
  if(id == null){
%>
<script>
  alert("로그인 되지 않았습니다.");
  location.href="sessionLogin.jsp";
</script>
<% } %>
<html>
<head>
    <title>Title</title>
  <link href = "style.css" rel="stylesheet" type="text/css">
</head>
<body>
<br/><br/><br/>
<table>
  <tr>
    <td colspan="2" class="title">환영합니다!</td>
  </tr>
  <tr>
    <td class="center"><%=id%>님이 로그인 하셨습니다.</td>
    <td class="center"><a href="sessionLogout.jsp">LOG OUT</a></td>
  </tr>
</table>
</body>
</html>
