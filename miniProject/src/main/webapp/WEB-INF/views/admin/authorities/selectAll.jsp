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
					<th>userID</th>
					<th>authority</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto">	
					<tr>
						<td><a href="/mini/admin/authorities/selectName?userID=${dto.userID }">${dto.userID }</a></td>
						<td>${dto.authority}</td>			
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<button class="btn btn-primary" onclick="location.href='<c:url value="/admin/authorities/insert"/>'">회원추가</button>
</div>
</body>
</html>
