<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id == null){
%>
		<script>
			alert("로드인 되지 않았습니다.");
			location.href="sessionLogin.jsp"
		</script>
<% 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<br/><br/><br/>
<table class="login">  
<tr>
	<td colspan="2" class="title">환영합니다!</td>
</tr>
<tr>
	<td class="center"><%=id %>님이 로그인 하셨습니다.</td>
	<td class="center"><a href="sessionLogout.jsp">로그 아웃</a></td>
</tr>
</table>
</body>
</html>