<%@ page contentType="text/html;charset=UTF-8"%>
<%
	response.setHeader("Pragma","no-cache");
	if(request.getProtocol().equals("HTTP/1.1")){
	   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
	}
%>
<h1>Response Example1</h1>
http://localhost/myapp/ch07/response1.jsp가<p/>
http://localhost/myapp/ch07/response1_1.jsp로 변경이 되었습니다.

