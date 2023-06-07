<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<jsp:useBean id="regBean" class="mem.MemberBean"/>
<jsp:setProperty name="regBean" property="*"/>
<%
	boolean success = mMgr.insertMember(regBean);
	if(success){
%>
		<script>
			alert("회원가입을 축하합니다.");
			location.href="memberList.jsp";
		</script>
<%	
	}else{
%>
		<script>
			alert("회원가입에 실패하였습니다.");
			history.back();
		</script>
<% 	}  %>

