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
<% 
	session.invalidate();
%>
<script>
	alert("로그아웃 되었습니다.");
	location.href="sessionLogin.jsp";
</script>      