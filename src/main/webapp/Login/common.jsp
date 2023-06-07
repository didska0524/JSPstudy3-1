<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-31
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if(session.getAttribute("idKey") == null){
%>
<script>
  location.href = "error.jsp";
</script>
<%
  }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
