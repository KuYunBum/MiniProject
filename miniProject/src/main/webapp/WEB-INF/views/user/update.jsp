<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<div class="container">
	<h4>정보수정</h4>
	<form action="/mini/user/update" method="post">
		아이디:<input type="text" name="userID" value="${dto.userID }" readonly="readonly"><br>
	<%-- 	비밀번호:<input type="text" name="userPW" value="${dto.userPW }" readonly="readonly"><br> --%>
		이름:<input type="text" name="userName" value="${dto.userName }"><br>
		성별:<select name='userGender'>
				<option value='"${dto.userGender }"' selected>${dto.userGender }</option>
				<option value='남자'>남자</option>
				<option value='여자'>여자</option>
			</select><br>
		생년월일:<input type="date" name="userBirth" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${dto.userBirth }'/>"><br>
		전화번호:<input type="text" name="userPhone" value="${dto.userPhone }"><br>
		이메일:<input type="text" name="userEmail" value="${dto.userEmail }"><br>
		<input type="hidden" name="enabled" value=1>
		<button type="submit" class="btn btn-primary">수정</button>
		<button type="button" class="btn btn-primary" onclick="history.back();">취소</button>
	</form>
</div>
</body>
</html>