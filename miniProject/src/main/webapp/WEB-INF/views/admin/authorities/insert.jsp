<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<form action="/mini/admin/authorities/insert" method="post">
유저아이디<input type="text" name="userID">
권한 <input type="text" name="authority">
<button type="submit" class="btn btn-primary" value="전송"></button>
</form>
</body>
</html>
