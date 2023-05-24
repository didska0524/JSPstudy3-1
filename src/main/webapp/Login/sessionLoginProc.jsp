<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-24
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<%
    String id = "";
    String pwd = "";

    if(request.getParameter("id") != null)
        id = request.getParameter("id");

    if(request.getParameter("pwd") != null)
        pwd = request.getParameter("pwd");

    if(mMgr.loginMember(id, pwd)) {
        session.setAttribute("idKey",id);
%>
<script>
    alert("로그인 되었습니다.");
    location.href = "sessionLoginOK.jsp";
</script>
<% }else{ %>
<script>
    alert("아이디 또는 비밀번호를 다시 확인해주세요. ");
    location.href = "sessionLogin.jsp";
</script>
<% } %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
