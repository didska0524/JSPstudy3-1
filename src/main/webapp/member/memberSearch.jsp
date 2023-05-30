<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, mem.*" %>
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<%
    String name = request.getParameter("name");
    Vector<MemberBean> vlist = mMgr.searchMemberList(name);
%>
<!DOCTYPE html>
<html>
<head>
    <title>회원 검색 결과</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
    <br/>
    <h3>회원 검색 결과</h3>
    <a href="memberList.jsp">회원 목록</a><br/><br/>
    <table>
        <tr class="title">
            <th>ID</th>
            <th>PASSWD</th>
            <th>NAME</th>
            <th>BIRTHDAY</th>
            <th>EMAIL</th>
        </tr>
        <% for (MemberBean bean : vlist) { %>
        <tr>
            <td><%= bean.getId() %></td>
            <td><%= bean.getPwd() %></td>
            <td><%= bean.getName() %></td>
            <td><%= bean.getBirthday() %></td>
            <td><%= bean.getEmail() %></td>
        </tr>
        <% } %>
    </table>
    <br/><br/>
    검색 결과 수: <%= vlist.size() %>
</div>
</body>
</html>
