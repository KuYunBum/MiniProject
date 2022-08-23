<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<h4>데이터 입력</h4>
<form action="/mini/admin/user/insert" method="post">
    <label id="labelID" for="userID"> 아이디 </label>
    <input type="text" name="userID" id="userID"><br>
    
    <label id="labelID" for="userPW"> 비밀번호 </label>
    <input type="password" id="userPW" name="userPW"><br>
    
    <label id="labelID" for="userName"> 이름 </label>
    <input type="text" name="userName"><br>
    
    <label id="labelID" for="userGender"> 성별 </label>
    <input type="radio" name="userGender" value="남자"> 남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" name="userGender" value="여자"> 여자<br>
        
    <label id="labelID" for="userBirth"> 생년월일 </label>
    <input type="date" name="userBirth"><br>
    
    <label id="labelID" for="userPhone"> 전화번호 </label>
    <input type="text" name="userPhone"><br>
    
    <label id="labelID" for="userEmail"> 이메일 </label>
    <input type="text" name="userEmail"><br>
    
    <label id="labelID" for="enabled"> 권한 </label>
    <input type="text" name="enabled" placeholder="권한 0 or 1"><br>
    
	<button type="submit" class="btn btn-primary">등록</button>
	<button type="button" class="btn btn-primary" onclick="location.href='/mini/admin/authorities/selectAll'">취소</button>
</form>
</body>
</html>