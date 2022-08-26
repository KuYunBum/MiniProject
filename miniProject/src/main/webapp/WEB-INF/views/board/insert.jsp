<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
						<td><input type="text" name="userID" value="<%=name %>" readonly="readonly"></td>
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
						<td><textarea style="width: 400px; height: 200px;" name="content"></textarea></td>
					</tr>
			</table>
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="button" class="btn btn-primary" onclick="history.back();">취소</button>
		</form>
	</div>
</div>

</body>
</html>
