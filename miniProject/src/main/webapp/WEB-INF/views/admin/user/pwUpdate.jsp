<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<div class="container">
	<h4>UPDATE</h4>
	<form action="/mini/admin/user/pwUpdate?userID=${dto.userID }" method="post">
		변경 할 비밀번호:<input type="text" name="userPW">
		<button type="submit" class="btn btn-primary">수정</button>
		<button type="button" class="btn btn-primary" onclick="location.href='/mini/admin/user/selectName?userID=${dto.userID}'">취소</button>
	</form>
</div>
</body>
</html>