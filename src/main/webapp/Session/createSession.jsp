<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  session.setAttribute("logID", "jane");
  session.setAttribute("logPW", "hello1234");
%>
세션이 생성되었습니다. <br/>
<a href="viewSessionInfo.jsp">세션 정보를 확인하는 페이지로 이동</a>
</body>
</html>
