<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<form:form class="userForm">
    <span id="result"></span><br>
	<label>
		<p class="label-txt">이름</p> <input type="text" class="input" id="userName" name="userName">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	<label>
		<p class="label-txt">전화번호</p> <input type="text" class="input" id="userPhone" name="userPhone">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> 
	    <button type="button" onclick="IDPW();">확인</button>
</form:form>
</body>
</html>
