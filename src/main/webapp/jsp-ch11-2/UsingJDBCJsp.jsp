<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-05-03
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="ch11.*"%>
<%@ page import="java.sql.*" %>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
    }
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    String id = "",
    pwd = "",
    name = "",
    num1="",
    num2="",
    email="",
    phone="",
    zipcode="",
    address="",
    job="";
    int counter = 0;
    try {
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC"
                + "&useUnicode=true&characterEncoding=eur-kr", "root", "1234");
        stmt = conn.createStatement();
        rs=stmt.executeQuery("select * from tblRegister");
%>
<html>
<head>
    <title>JSP에서 데이터베이스 연동</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <!-- 디자인 관련 (style2.css)파일을 링크시킨다. -->
</head>
<body bgcolor="#FFFFCC">
<h2>JSP 스크립트릿에서 데이터베이스 연동 예제</h2>
<br/>
<h3>회원정보</h3>
<table bordercolor="#0000ff" border="1">
    <tr>
        <td><strong>ID</strong></td>
        <td><strong>PWD</strong></td>
        <td><strong>NAME</strong></td>
        <td><strong>NUM1</strong></td>
        <td><strong>NUM2</strong></td>
        <td><strong>EMALL</strong></td>
        <td><strong>PHONE</strong></td>
        <td><strong>ZIPCODE/ADDRESS</strong></td>
        <td><strong>JOB</strong>
    </tr>
    <%
        if (rs != null) //질의에 실행 결과가 null값이 아닐때 다음 질의를 실행(slect결과값을 불러옴)
        {

            while (rs.next()) //id등 각종 값을 받아와서 변수에 넣는다.
            {
                id = rs.getString("id");
                pwd = rs.getString("pwd");
                name = rs.getString("name");
                num1 = rs.getString("num1");
                num2 = rs.getString("num2");
                email = rs.getString("email");
                phone = rs.getString("phone");
                zipcode = rs.getString("zipcode");
                address = rs.getString("address");
                job = rs.getString("job");
    %>
    <tr>
        <td><%=id%></td>
        <td><%=pwd%></td>
        <td><%=name%></td>
        <td><%=num1%></td>
        <td><%=num2%></td>
        <td><%=email%></td>
        <td><%=phone%></td>
        <td><%=zipcode%></td>
        <td><%=address%></td>
        <td><%=job%></td>
        <%
                counter++; //1회전 할때 마다 1씩 증가 전체 출력할 개수를 확인하는 용도
                } //end while

            } //end if
        %>
    </tr>
</table>
<br /> total records :
<%=counter%>
<%
    } catch (SQLException sqlException) {
        System.out.println("sql exception");
    } catch (Exception exception) {
        System.out.println("exception");
    } finally {
        if (rs != null)
            try {
                rs.close();
            }
            catch (SQLException ex) {
                ex.printStackTrace();
            }
        if (stmt != null)
            try {
                stmt.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        if (conn != null)
            try {
                conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

    }
%>
</body>
</html>