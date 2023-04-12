<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-05
  Time: 오후 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Example1</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String name = request.getParameter("name");
  String studentNum = request.getParameter("studentNum");
  String gender = request.getParameter("gender");
  String major = request.getParameter("major");

  if(gender.equals("man")){
    gender ="남자";
  }
  else{
    gender ="여자";
  }
%>

<h1>Request Example</h1>
성명 : <%=name%><p/>
학번 : <%=studentNum%><p/>
성별 : <%=gender%><p/>
학과 : <%=major%>
</body>
</html>
