<%@ page import="java.util.*" %>
<!-- java.util 패키지에 있는 클래스를 현재 jsp 페이지에 import -->
<%--
  Created by IntelliJ IDEA.
  User: seoil
  Date: 2023-04-09
  Time: 오후 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>studentProc.jsp</title>
    <style>
        table {
            border-collapse: collapse;
            margin: 20px;
            width: 400px;
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>이름</th>
        <td><%= request.getParameter("name") %></td>
        <!--http 요청으로 전송된 name 파라미터 값을 get 해와 출력하는 메소드-->
    </tr>
    <tr>
        <th>성별</th>
        <td><%= request.getParameter("gender") %></td>
        <!--http 요청으로 전송된 gender 파라미터 값을 get 해와 출력하는 메소드-->
    </tr>
    <tr>
        <th>전공</th>
        <td><%= request.getParameter("major") %></td>
        <!--http 요청으로 전송된 major 파라미터 값을 get 해와 출력하는 메소드-->
    </tr>
    <tr>
        <th>취미</th>
        <td><%= request.getParameterValues("hobby") != null ? String.join(", ", request.getParameterValues("hobby")) : "" %></td>
        <!--http 요청으로 전송된 hobby 파라미터 값을 get 해와 출력하는 메소드
        이때 파라미터의 값들을 배열형태로 가져온다. hobby는 체크박스 형태이므로
        여러개의 값이 존재할수도, 아예 체크하지 않을수도 있다.
        따라서 hobby 파라미터가 공백일경우(전송되지 않았을 경우)는 빈 문자열을 출력하고
        여러개일경우 배열의 각 요소들을 가져와 ", "를 사이에 두고 출력한다.-->
    </tr>
</table>
<input type="button" value="다시 작성하기" onclick="location.href='student.jsp'">
<input type="button" value="돌아가기" onclick="history.back()">
<!-- 다시 작성하기 버튼을 클릭시 student.jsp 로 이동한다. 마찬가지로 돌아가기 버튼 또한
 이전 페이지였던 student.jsp 로 이동하는것은 똑같으나 구동방식에서 차이가 있다.
 location.href 속성에 지정된 페이지로 이동하는건 클라이언트 측에서 이동한다. 즉 사용자가 이전에 입력된 내용이 초기화된다.
 history.back() 메서드는 브라우저의 히스토리에서 이전 페이지로 이동하기때문에 클라이언트가 아닌 서버에서 불러와야한다.
 그러나 이전 페이지가 유효하지 않을때는 버튼이 유도한 기능이 발휘되지 않을수도 있다.
 구글 크롬 기준으로 돌아가기 버튼은 입력한 데이터가 잔존해 기존 작성내용 수정 후 제출이 가능하다.-->
</body>
</html>
