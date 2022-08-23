<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<h4>UPDATE</h4>
<form action="/mini/admin/user/pwUpdate" method="post">
	비밀번호:<input type="text" name="userPW" value="${dto.userPW }"><br>
	<button type="submit" class="btn btn-primary" value="수정"></button>
	<button type="button" class="btn btn-primary" onclick="location.href='/mini/admin/user/selectName?userID=${dto.userID}'">취소</button>
</form>
</body>
</html>