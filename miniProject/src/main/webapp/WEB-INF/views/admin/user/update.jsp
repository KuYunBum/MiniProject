<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<h4>UPDATE</h4>
<form action="/mini/admin/user/update" method="post">
	회원번호:<input type="text" name="userNum" value="${dto.userNum }" readonly="readonly"><br>
	아이디:<input type="text" name="userID" value="${dto.userID }" readonly="readonly"><br>
	비밀번호:<input type="text" name="userPW" value="${dto.userPW }" readonly="readonly"><br>
	이름:<input type="text" name="userName" value="${dto.userName }"><br>
	성별:<input type="text" name="userGender" value="${dto.userGender }"><br>
	생년월일:<input type="text" name="userBirth" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${dto.userBirth }'/>"><br>
	전화번호:<input type="text" name="userPhone" value="${dto.userPhone }"><br>
	이메일:<input type="text" name="userEmail" value="${dto.userEmail }"><br>
	권한:<input type="text" name="enabled" value="${dto.enabled }"><br>
	<button type="submit" class="btn btn-primary">수정</button>
	<button type="button" class="btn btn-primary" onclick="location.href='/mini/admin/user/selectName?userID=${dto.userID}'">취소</button>
</form>
</body>
</html>