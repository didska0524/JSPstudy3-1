<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-12
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>검색할 단어를 입력하세요.</h2>
<form method="get" action="sendRedirectProc.jsp">
  검색 키워드: <input type="text" name="word"><p>
  <input type="submit" value="보내기">
  <input type="reset" value="취소">
</form>

</body>
</html>
