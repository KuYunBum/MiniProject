<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<div class="container">
	<h2>게시판</h2>
	<div class="table table-striped">
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
					<td>${boardDto.title }</td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td>${boardDto.content }</td>
				</tr>
		</table>
	</div>
	<sec:authorize access="isAuthenticated()">
		<button type="button" class="btn btn-primary" onclick="location.href='<c:url value='/board/update?bno=${boardDto.bno }'/>'">수정</button>
		<button type="button" class="btn btn-primary" onclick="location.href='<c:url value='/board/delete?bno=${boardDto.bno }'/>'">삭제</button>
	</sec:authorize>
	<button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/board/list?userID="/><%=name %>'">목록</button>
</div>

</body>
</html>
