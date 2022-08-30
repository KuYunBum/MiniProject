<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

</head>
<body>
	<div class="container">
	<h3>모든 데이터 보기</h3>
		<div class="table table-striped">
			<table class="table">
				<thead>
					<tr>
						<th>회원번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>생년월일</th>
						<th>권한</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.userNum}</td>
							<td><a href="/mini/admin/user/selectName?userID=${dto.userID }">${dto.userID }</a></td>
							<td>${dto.userName}</td>
							<td>${dto.userGender}</td>
							<td>${dto.userEmail}</td>
							<td>${dto.userPhone}</td>
							<td><fmt:formatDate pattern='yyyy-MM-dd' value='${dto.userBirth }'/></td>
							<td>${dto.enabled }</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/insert"/>'">입력</button>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/admin"/>'">관리자 홈</button>
	</div>
</body>
</html>