<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<div class="container">
	<h4>UPDATE</h4>
	<form action="/mini/user/pwUpdate" method="post">
		<input type="hidden" name="userID" value="${dto.userID }">
		변경 할 비밀번호:<input type="text" name="userPW">
		<button type="submit" class="btn btn-primary">수정</button>
		<button type="button" class="btn btn-primary" onclick="history.back();">취소</button>
	</form>
</div>
</body>
</html>