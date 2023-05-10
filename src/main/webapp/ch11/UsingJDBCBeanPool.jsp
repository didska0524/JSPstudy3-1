<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-10
  Time: 오후 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, ch11.*" %>
<jsp:useBean id="regMgr" class="ch11.RegisterMgrPool" />
<html>
<head>
    <title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
<h2>Bean를 사용한 데이터베이스 연동 예제</h2><br/>
<h3>회원정보</h3>
<table bordercolor="#0000ff" border="1">
    <tr>
        <td><strong>아이디</strong></td>
        <td><strong>패스워드</strong></td>
        <td><strong>이름</strong></td>
    </tr>
<%
    Vector<RegisterBean> vlist = regMgr.getRegisterList();
    int counter = vlist.size();
    for(int i=0; i<vlist.size(); i++){
        RegisterBean regBean = vlist.get(i);
%>
    <tr>
        <td><%=regBean.getId() %></td>
        <td><%=regBean.getPwd() %></td>
        <td><%=regBean.getName() %></td>
    </tr>
<%
    }
%>
</table>
<br/><br/>
total records : <%=counter%>
</body>
</html>
