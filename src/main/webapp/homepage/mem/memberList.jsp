<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*, mem.*"%>
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<!DOCTYPE html>
<html>
<head>  
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="../top.jsp" />
<div align="center">
<br/>
<h3>회원정보</h3>
<a href="member.jsp">회원등록</a><br/><br/>
<table class="member">
<tr class="title">
   <th>ID</th>
   <th>PASSWD</th>
   <th>NAME</th>
   <th>birthday</th>
   <th>EMAIL</th>
   <th>수정</th>
   <th>삭제</th>
</tr>
<%
	Vector<MemberBean> vlist = mMgr.getMemberList();
	int counter = vlist.size();
	for(int i=0; i<vlist.size(); i++){
   		MemberBean bean =vlist.get(i);
%>
<tr>
	<td><%=bean.getId()%></td>
	<td><%=bean.getPwd()%></td>
	<td><%=bean.getName()%></td>
	<td><%=bean.getBirthday()%></td>
	<td><%=bean.getEmail()%></td>
	<td><a href="memberModify.jsp?id=<%=bean.getId()%>" >수정</a></td>
	<td><a href="memberDelete.jsp?id=<%=bean.getId()%>" 
		   onClick="return confirm('<%=bean.getName()%>님 회원 정보를 정말로 삭제하시겠습니까?');" >삭제</a></td>
</tr>
<%
   }
%>
</table>
<br/>
<br/>
total records : <%= counter %> 
</div>
</body>
</html>