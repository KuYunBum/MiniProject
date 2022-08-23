<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

	<script>
	 var result = '${msg}';
		if (result == 'success') {
			alert("처리가 완료되었습니다.");
		}
	</script>
	<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
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
						<th>password</th>
						<th>enabled</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="/mini/admin/user/delete?userID=${dto.userID}">삭제</a></td>
						<td>${dto.userID}</td>
						<td>${dto.userPW}</td>
						<td>${dto.enabled }</td>
					</tr>
				</tbody>
			</table>
		</div>
		<%-- <button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/update?userID=${dto.userID }&userPW=${dto.userPW}&enabled=${dto.enabled}"/>'">수정</button> --%>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/update?userID=${dto.userID }"/>'">수정</button>
		<button class="btn btn-primary"  onclick="location.href='<c:url value="/admin/user/selectAll"/>'">전체 데이터</button>
	</div>
</body>
</html>