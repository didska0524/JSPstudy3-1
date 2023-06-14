<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null){
%>
		<script>
			alert("이미 로그인 되었습니다.");
			location.href="sessionLoginOK.jsp";
		</script>
<% 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="../top.jsp" />
<br/><br/><br/>
<form method="post"  action="sessionLoginProc.jsp">
<table class="login">
	<tr>
		<td colspan="2" class="title">로그인</td>
	</tr>
	<tr>
		<th width="40%">아이디</th>
		<td><input name="id" size="25"></td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td><input type="password" name="pwd" size="25"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="login">&nbsp;
			<input type="reset" value="reset">
		</td>
	</tr>
</table>
</form>
</body>
</html>