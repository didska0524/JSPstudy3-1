<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-31
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="frmName" method="post" enctype="multipart/form-data" action="viewPage.jsp">  user<br/>
  <input type="text" name="user"><br/>
  title<br/>
  <input type="text" name="title"><br/>
  file<br/>
  <input type="file" name="uploadFile"><br/>
  <input type="submit" value="UPLOAD"><br/>
</form>
</body>
</html>
