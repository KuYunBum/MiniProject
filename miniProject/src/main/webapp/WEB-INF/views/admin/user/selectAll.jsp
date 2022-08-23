<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<title>select</title>
</head>
<body>
	<div class="container">
	<h3>모든 데이터 보기</h3>
		<div class="table table-striped">
			<table class="table">
				<thead>
					<tr>
						<th>userID</th>
						<th>password</th>
						<th>enabled</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td><a href="/mini/admin/user/selectName?userID=${dto.userID }">${dto.userID }</a></td>
							<td>${dto.userPW}</td>
							<td>${dto.enabled }</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/insert"/>'">입력</button>
		<button class="btn btn-primary"  onclick="location.href=<c:url value="/admin/admin/"/>'">관리자 홈</button>
	</div>
</body>
</html>