<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<div class="container">
	<h4>update</h4>
	<form action="/mini/admin/authorities/update" method=post>
		이름<input type="text" name=userID value="${dto.userID }" > 
		권한<input type="text" name=authority value="${dto.authority }">
		<button type="submit" class="btn btn-primary">수정</button>
		<button type="button" class="btn btn-primary" onclick="location.href='/mini/admin/authorities/selectName?userID=${dto.userID}'">뒤로</button>
	</form>
</div>
</body>
</html>