<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<form class="userForm" action="/mini/user/join" method="post">
	<span id="result"></span><br>
	<label>
		<p class="label-txt">아이디</p> <input type="text" class="input" oninput="joinCheckID();" id="userID" name="userID">
		<div class="line-box">
			<div class="line"></div>
		</div><br>
		<input type="hidden" name="checked_id">
	</label> 
	<label>
		<p class="label-txt">비밀번호</p> <input type="password" class="input" name="userPW">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">이름</p> <input type="text" class="input" name="userName">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">성별</p> 
		<select class="input" name='userGender'>
			<option value='' selected>선택</option>
			<option value='남자'>남자</option>
			<option value='여자'>여자</option>
		</select>
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">생년월일</p> 
		<input type="date" class="input" name="userBirth">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">전화번호</p> <input type="text" class="input" name="userPhone">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">이메일</p> <input type="text" class="input"	name="userEmail">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label>
	<button type="submit" class="joinBtn">회원가입</button>
</form>


<!-- <div class="container">
	<h4>회원 가입</h4>
	<form action="/mini/user/join" method="post">
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
	    
	    <input type="hidden" name="enabled" value="1">
	        
		<button type="submit" class="btn btn-primary">등록</button>
		<button type="button" class="btn btn-primary" onclick="location.href='/mini/user/login'">취소</button>
	</form>
</div> -->
</body>
</html>