<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="mem.*" %>
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<%
	String id = request.getParameter("id");
	MemberBean bean = mMgr.getMember(id);
%>  
<!DOCTYPE html>
<html>
<head>
<title>회원 정보 수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body>
<br/><br/>
<form name="regForm" method="post" action="memberModifyProc.jsp">
<table class="member">
    <tr> 
      <td colspan="2" class="title">회원 정보 수정</td>
    </tr>
    <tr> 
      <td width="120">아이디</td>
      <td><input type="text" name="id" size="30" readonly value=<%=bean.getId()%> ></td>
    </tr>
    <tr> 
      <td>패스워드</td> 
      <td><input type="password" name="pwd" size="30" value=<%=bean.getPwd()%>  ></td>
    </tr>
    <tr> 
      <td>패스워드 확인</td>
      <td><input type="password" name="repwd" size="30" ></td>
    </tr>
    <tr>  
      <td>이름</td>
      <td><input name="name" size="30" value=<%=bean.getName()%> ></td>
    </tr>
    <tr> 
      <td>생년월일</td>
      <td><input type="date" name="birthday" size="30" placeholder="0000-00-00" 
                 value=<%=bean.getBirthday()%> ></td>
    </tr>
    <tr>  
      <td>이메일</td>
      <td><input type="email" name="email" size="30" value=<%=bean.getEmail()%> ></td>
    </tr>
    <tr> 
      <td colspan="3" align="center"> 
       <input type="button" value="회원정보 수정" onclick="inputCheck()"> &nbsp; 
       <input type="reset" value="원래대로"> 
      </td>
    </tr>
</table>
</form>  
</body>
</html>