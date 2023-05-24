<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>쿠키 예제</h1>
<%
  Cookie[] cookies = request.getCookies();
  if(cookies!=null){
    for(int i = 0; i<cookies.length; ++i){
      if(cookies[i].getName().equals("myCookie")){
%>
        Cookie Name : <%=cookies[i].getName()%><br>
        Cookie Value : <%=cookies[i].getName()%><br>
<%
      }
    }
  }
%>
</body>
</html>
