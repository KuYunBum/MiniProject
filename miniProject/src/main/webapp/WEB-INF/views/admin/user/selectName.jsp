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
						<th>회원번호</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>성별</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>생년월일</th>
						<th>권한</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="/mini/admin/user/delete?userID=${dto.userID}">삭제</a></td>
						<td>${dto.userNum}</td>
						<td>${dto.userID }</td>
						<td>${dto.userPW }</td>
						<td>${dto.userName}</td>
						<td>${dto.userGender}</td>
						<td>${dto.userEmail}</td>
						<td>${dto.userPhone}</td>
						<td><fmt:formatDate pattern='yyyy-MM-dd' value='${dto.userBirth }'/></td>
						<td>${dto.enabled }</td>
					</tr>
				</tbody>
			</table>
		</div>
		<%-- <button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/update?userID=${dto.userID }&userPW=${dto.userPW}&enabled=${dto.enabled}"/>'">수정</button> --%>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/update?userID=${dto.userID }"/>'">정보변경</button>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/pwUpdate?userID=${dto.userID }"/>'">비밀번호변경</button>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/selectAll"/>'">전체 데이터</button>
	</div>
</body>
</html>