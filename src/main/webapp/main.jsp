<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-05
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main.jsp</title>
</head>
<body>
    <h2>include 액션 태그</h2>
    main.jsp 파일 시작 부분입니다.<br>
    include 태그는 페이지 속성 파일 결과를 태그 위치에 삽입합니다.

    <jsp:include page="sub.jsp" />

    main.jsp 파일 끝 부분입니다.<br>
</body>
</html>
