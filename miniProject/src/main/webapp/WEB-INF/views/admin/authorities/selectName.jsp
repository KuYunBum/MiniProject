<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>


</head>
	<body>
		<div class="container">
		<h3>상세 데이터 보기</h3>
			<div class="table table-striped">
				<table class="table">
					<thead>
						<tr>
							<th>구분</th>
							<th>userID</th>
							<th>authority</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a
								href="/mini/admin/authorities/delete?userID=${dto.userID}">삭제</a></td>
							<td>${dto.userID}</td>
							<td>${dto.authority}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<button class="btn btn-primary" onclick="location.href='<c:url value="/admin/authorities/update?userID=${dto.userID}&authority=${dto.authority}"/>'">정보수정</button>
			<button class="btn btn-primary" onclick="location.href='<c:url value="/admin/authorities/pwUpdate?userID=${dto.userID}&authority=${dto.authority}"/>'">비밀번호변경</button>
			<button class="btn btn-primary" onclick="location.href='<c:url value="/admin/authorities/selectAll"/>'">전체 데이터</button>
		</div>
	</body>
</html>