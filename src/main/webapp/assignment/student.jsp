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
    <title>student.jsp</title>
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
<form action="studentProc.jsp" method="post">
    <table>
        <tr>
            <th>이름</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>성별</th>
            <td>
                <label><input type="radio" name="gender" value="여자">여자</label>
                <label><input type="radio" name="gender" value="남자">남자</label>
                <!-- 성별 선택 라디오 버튼 -->
            </td>
        </tr>
        <tr>
            <th>전공</th>
            <td>
                <select name="major">
                    <option value="국문학과">국문학과</option>
                    <option value="소프트웨어 공학과">소프트웨어 공학과</option>
                    <option value="경영학과">경영학과</option>
                    <!-- 전공 선택 셀렉트 박스 -->
                </select>
            </td>
        </tr>
        <tr>
            <th>취미</th>
            <td>
                <label><input type="checkbox" name="hobby" value="수영">수영</label>
                <label><input type="checkbox" name="hobby" value="여행">여행</label>
                <label><input type="checkbox" name="hobby" value="독서">독서</label>
                <label><input type="checkbox" name="hobby" value="영화감상">영화감상</label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="회원 정보 보내기">
                <!-- 폼에서 사용자가 입력한 데이터를 전송함 타입을 submit 으로 지정시 폼 데이터를 서버로 전송 -->
                <input type="reset" value="다시 작성하기">
                <!-- 입력한 내용을 초기화 -->
            </td>
        </tr>
    </table>
</form>
</body>
</html>
