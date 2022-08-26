<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<div class="container">
	<form action="/mini/admin/authorities/insert" method="post">
	유저아이디<input type="text" name="userID">
	권한	<select name='authority'>
			<option value='ROLE_MEMBER'>일반사용자</option>
			<option value='ROLE_ADMIN'>관리자</option>
		</select>
	<button type="submit" class="btn btn-primary">확인</button>
	</form>
</div>
</body>
</html>
