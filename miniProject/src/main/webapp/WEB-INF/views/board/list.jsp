<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
						<td>${boardDto.bno }</td>
						<td><a href="<c:url value='/board/detail?bno=${boardDto.bno }'/>">${boardDto.title }</a></td>
						<td>${boardDto.userID }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${boardDto.regDate }" /></td>
						<td>${boardDto.viewCnt }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<sec:authorize access="isAuthenticated()">
		<button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/board/insert?userID="/><%=name %>'">글쓰기</button>
	</sec:authorize>
</div>

</body>
</html>
