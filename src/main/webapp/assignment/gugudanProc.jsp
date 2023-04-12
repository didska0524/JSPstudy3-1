<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-09
  Time: 오후 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>gugudanProc.jsp</title>
</head>
<body>
<h1>구구단: <%= request.getParameter("number") %>단</h1> <!--number 변수를 통해 사용자가 선택한 구구단 숫자값을 받아옴-->
<%
    int number = Integer.parseInt(request.getParameter("number"));
    // gugudan.jsp 에서 받아온 String 형태의 값을 Integer.parseInt 를 통해 int 타입으로 변환함
    for (int i = 1; i <= 9; i++) {
        out.print(number + " * " + i + " = " + (number * i) + "<br>");
    }
    // for 문을 이용하여 결과출력, <br>태그를 이용하여 결과 한줄을 출력이후 자동 줄바꿈
%>
</body>
</html>