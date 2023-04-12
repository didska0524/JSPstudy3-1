<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-09
  Time: 오후 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>clacProc.jsp</title>
</head>
<body>
<h1>연산 결과</h1>
<%
    double number = Integer.parseInt(request.getParameter("number"));
    double number2 = Integer.parseInt(request.getParameter("number2"));
    //나누기를 위해 일부러 double형태로 함.
    // calc.jsp 에서 받아온 String 형태의 값을 Integer.parseInt 를 통해 int 타입으로 변환함

    String op = request.getParameter("operator");


    double res =0;
    switch (op) { // 각기 다른 연산자 데이터를 받아왔을때 각각 다른값을 출력해야하기때문에 case 문 사용
        case "+":
            res = number + number2;
            break;
        case "-":
            res = number - number2;
            break;
        case "*":
            res = number * number2;
            break;
        case "/":
            res = number / number2;
            break;
    }
    // 더 향상된 switch case문을 쓰려고 하였으나 자바 버젼문제( 아마도 에디터와 jsp버젼 충돌,,?
    // 로 인하여 일반적인 switch문 작성. 각각의 연산자마다 다른 결과값을 res 필드에 입력한다.
%>
<p><%= number + op + number2 + "=" + res %></p>
<!-- 표현식을 이용한 결과값 출력. -->
</body>
</html>
