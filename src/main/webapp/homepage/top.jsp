<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-06-07
  Time: 오후 3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Top</title>

    <link href="style2.css" rel="stylesheet" type="text/css" >
</head>
<body>
<br>
<div align="center">

    <header id="headerTitle">
        <h1><a href="http://localhost:8088/homepage/index.jsp">홍길동 홈페이지</a></h1>
    </header>
    <nav id="menuBar">
        <ul>
        <%
            String id = (String) session.getAttribute("idKey");
            if(id==null){
        %>
            <li><a href="http://localhost:8088/homepage/login/sessionLogin.jsp">로그인</a> &nbsp;</li>
            <li><a href="http://localhost:8088/homepage/mem/member.jsp">회원가입</a> &nbsp;</li>
        <%
            }else{
        %>
            <li><a href="http://localhost:8088/homepage/login/sessionLogout.jsp">로그아웃</a> &nbsp;</li>
        <%
            }
        %>
            <li><a href="http://localhost:8088/homepage/common/a.jsp">회원만</a> &nbsp;</li>
            <li><a href="http://localhost:8088/homepage/board/list.jsp">자유게시판</a> &nbsp;</li>
        </ul>
    </nav>
</div>
<hr width="90%">
</body>
</html>
