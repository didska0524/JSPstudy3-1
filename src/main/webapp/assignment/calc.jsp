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
    <title>clac.jsp</title>
</head>
<body>
<h1>단을 입력하세요</h1>
<form method="post" action="calcProc.jsp">
    <p>숫자 1 : <input type = "number" name="number"></p>
    <p>숫자 2 : <input type = "number" name="number2"></p>
    <!-- post 방식으로 폼 제출, 폼이 제출되면 clacProc.jsp 파일을 호출한다.-->
    <select name="operator">
        <!-- operator 을 통해 특정값을 clacProc.jsp 에 전달 select 를 이용하여 연산기호 선택 -->
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <input type="submit" value="보내기">
    <!-- clacProc.jsp 로 값을 전달한다. -->
</form>
</body>
</html>
