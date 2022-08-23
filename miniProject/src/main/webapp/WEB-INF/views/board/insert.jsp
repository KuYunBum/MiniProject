<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
	.container,
	.table th, td {
		text-align: center;
	}
</style>

<%@include file="../include/header.jsp"%>

<div class="container">
	<h2>게시판</h2>
	<div class="table table-striped">
		<form action="/mini/board/insert" method="post">
			<table class="table">
					<tr>
						<th>작성자</th>
					</tr>
					<tr>
						<td><input type="text" name="userID"></td>
					</tr>
					<tr>
						<th>제목</th>
					</tr>
					<tr>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<th>내용</th>
					</tr>
					<tr>
						<td><textarea name="content"></textarea></td>
					</tr>
			</table>
			<button type="submit" class="btn btn-primary">저장</button>
		</form>
	</div>
</div>

</body>
</html>
