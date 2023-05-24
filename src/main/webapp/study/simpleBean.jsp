<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-26
  Time: 오후 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="test" class="ch09.SimpleBean" />
<jsp:setProperty name="test" property="message" value="빈을 쉽게 정복하자!" />

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>간단한 빈 프로그래밍</h1>
<br/>
Message: <jsp:getProperty name="test" property="message"/>
</body>
</html>
