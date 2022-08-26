<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$.ajax({
		url:'/mini/user/user',
		type:'get',
		success: function(data) {
			$("#content").html(data);
		}
	})
</script>


<div id="content"></div>