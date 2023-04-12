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
    <title>gugudan.jsp</title>
</head>
<body>
<h1>단을 입력하세요</h1>
<form method="post" action="gugudanProc.jsp">
    <!-- post 방식으로 폼 제출, 폼이 제출되면 gugudanProc.jsp 파일을 호출한다.-->
    <select name="number">
        <!-- number 을 통해 특정값을 gugudanProc.jsp 에 전달 select 를 이용하여 단 선택 -->
        <option value="2">2단</option>
        <option value="3">3단</option>
        <option value="4">4단</option>
        <option value="5">5단</option>
        <option value="6">6단</option>
        <option value="7">7단</option>
        <option value="8">8단</option>
        <option value="9">9단</option>
    </select>
    <input type="submit" value="보내기">
    <!-- gugudanProc.jsp 로 값을 전달한다. -->
</form>
</body>
</html>
