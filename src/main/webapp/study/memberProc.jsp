<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-26
  Time: 오후 4:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="regBean" class="ch09.MemberBean" />
<jsp:setProperty name="regBean" property="*" />
<html>
<head>
    <title>회원가입 확인</title>
  <link href="style.css" rel="stylesheet" type="text/css">
  <script src="script.js"></script>
</head>
<body>
<br/><br/>
<form name="regForm" method="post" action="memberInsert.jsp">
    <table>
        <tr>
            <td colspan="2" class="title">
                <jsp:getProperty name="regBean" property="name"/>
                회원님이 작성한 내용입니다. 확인해주세요.
            </td>
        </tr>
        <tr>
            <td width="175px">아이디</td>
            <td><jsp:getProperty name="regBean" property="id"/></td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td><jsp:getProperty name="regBean" property="pwd"/></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><jsp:getProperty name="regBean" property="name"/></td>
        </tr>
        <tr>
            <td>생년월일</td>
            <td><jsp:getProperty name="regBean" property="birthday"/></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><jsp:getProperty name="regBean" property="email"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" value="확인완료">&nbsp; &nbsp;
                <input type="reset" value="다시쓰기" onclick="history.back()">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
