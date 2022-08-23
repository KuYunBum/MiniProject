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
		<table class="table">
			<thead >
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="boardDto">
					<tr>
						<td><a href="<c:url value='/board/detail?bno=${boardDto.bno }'/>">${boardDto.bno }</a></td>
						<td>${boardDto.title }</td>
						<td>${boardDto.userID }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${boardDto.regDate }" /></td>
						<td>${boardDto.viewCnt }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/board/insert"/>'">글쓰기</button>
</div>

</body>
</html>
