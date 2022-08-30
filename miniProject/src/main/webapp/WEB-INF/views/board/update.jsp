<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<div class="container">
	<h2>게시판</h2>
	<div class="table table-striped">
		<form action="/mini/board/update" method="post">
			<input type="hidden" id="bno" value="${boardDto.bno }">
			<table class="table">
					<tr>
						<th>작성자</th>
					</tr>
					<tr>
						<td>${boardDto.userID }</td>
					</tr>
					<tr>
						<th>제목</th>
					</tr>
					<tr>
						<td><input type="text" id="title" name="title" value="${boardDto.title }"></td>
					</tr>
					<tr>
						<th>내용</th>
					</tr>
					<tr>
						<td><textarea style="width: 400px; height: 200px;" id="content" name="content">${boardDto.content }</textarea></td>
					</tr>
			</table>
			<button type="button" class="btn btn-primary" onclick='boardUpdate();'>저장</button>
			<button type="button" class="btn btn-primary" onclick="location.href='/mini/board/detail?bno=${boardDto.bno}'">뒤로</button>
		</form><br>
		<span id="result"></span>
	</div>
</div>

</body>
</html>
