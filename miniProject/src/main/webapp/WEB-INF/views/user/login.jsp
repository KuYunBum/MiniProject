<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<c:url value="/login" var="loginUrl" />
<form:form class="userForm" action="${loginUrl}" method="POST">
	<c:if test="${param.error != null}">
		<p>다시 확인해주세요.</p>
	</c:if>
    <c:if test="${param.logout != null}">
        <p>로그아웃 하였습니다.</p>
    </c:if>
    <span id="result"></span><br>
	<label>
		<p class="label-txt">아이디</p> <input type="text" class="input" oninput="loginCheckID();" id="userID" name="userID">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">비밀번호</p> <input type="text" class="input" id="userPW" name="userPW">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	    <button type="submit">로그인</button>
	    <button type="button" onclick="location.href='/mini/user/findUser'">ID/PW 찾기</button>
</form:form>

<%-- <div class="container">
	<h3>아이디와 비밀번호를 입력해주세요.</h3>
	<c:url value="/login" var="loginUrl" />
	<form:form name="frmLogin" action="${loginUrl}" method="POST">
		<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
			<font color="red">
				<p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
				<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
			</font>
		</c:if>
	    <c:if test="${param.error != null}">
	        <p>아이디와 비밀번호가 잘못되었습니다.</p>
	    </c:if>
	    <c:if test="${param.logout != null}">
	        <p>로그아웃 하였습니다.</p>
	    </c:if>
	    <p>
	        <label for="userID">아이디</label>
	        <input type="text" id="userID" name="userID" />
	    </p>
	    <p>
	        <label for="userPW">비밀번호</label>
	        <input type="password" id="userPW" name="userPW"/>
	    </p>
	    <button type="submit" class="btn btn-primary">로그인</button>
	    <button type="button" class="btn btn-primary" onclick="location.href='/mini'">홈</button>
	</form:form>
</div> --%>
</body>
</html>
