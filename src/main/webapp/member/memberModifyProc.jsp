<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-17
  Time: 오후 6:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<jsp:useBean id="regBean" class="mem.MemberBean" />
<jsp:setProperty name="regBean" property="*" />
<%
  boolean success = mMgr.modifyMember(regBean);
  if(success){
%>
<script>
  alert("회원 정보를 수정하였습니다.");
  location.href="memberList.jsp";
</script>
<%
  }else{
%>
<script>
  alert("회원정보 수정에 실패하였습니다.");
  history.back();
</script>
<% } %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
