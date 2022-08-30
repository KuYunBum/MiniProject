<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	Object principal = auth.getPrincipal();
	String name = "";
	if(principal != null) {
		name = auth.getName();
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/mini/resources/css/template.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script	src="/mini/resources/js/project.js"></script>
</head>
<script type="text/javascript">
	var result = "${msg}";
	if(result=="success"){
		alert("처리가 완료되었습니다.");
	}
	if(result=="null"){
		alert("입력안된 사항이 있습니다.");
	}
</script>

<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<sec:authorize access="isAnonymous()">
					<li><a href="<c:url value="/user/user"/>">Home</a></li>
				</sec:authorize>
				<sec:authorize access="hasRole('MEMBER')">
					<li><a href="<c:url value="/member/member"/>">Home</a></li>
				</sec:authorize>
				<sec:authorize access="hasRole('ADMIN')">
					<li><a href="<c:url value="/admin/admin"/>">Home</a></li>
				</sec:authorize>
				<li><a href="<c:url value="/board/list?userID="/><%=name %>">게시판</a></li>
				<sec:authorize access="hasRole('ADMIN')">
					<li><a href="<c:url value="/admin/authorities/selectAll"/>">권한관리</a></li>
					<li><a href="<c:url value="/admin/user/selectAll"/>">회원관리</a></li>
				</sec:authorize>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="isAnonymous()">
					<li><a href="<c:url value="/user/join"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="<c:url value="/user/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a style="color: white;"><%=name %>님, 반갑습니다.</a></li>
					<sec:authorize access="hasRole('MEMBER')">
						<li><a href="<c:url value="/user/detail?userID="/><%=name %>">내정보</a></li>
					</sec:authorize>
					<li><a href="<c:url value="/user/logout"/>"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</sec:authorize>
			</ul>
		</div>
	</nav>