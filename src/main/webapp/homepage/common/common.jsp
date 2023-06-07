<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("idKey") == null){
%>
		<script>
			location.href = "error.jsp";
		</script>
<%
	}
%>