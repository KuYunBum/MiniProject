$(document).ready(function() {
	
	$('.navbar-nav').find('a[href="' + document.location.pathname + '"]').parents('li').addClass('active');
	
    $('.input').focus(function(){
        $(this).parent().find(".label-txt").addClass('label-active');
        });

        $(".input").focusout(function(){
        if ($(this).val() == '') {
            $(this).parent().find(".label-txt").removeClass('label-active');
        };
    });
});

function joinCheckID() {
    if ($('#userID').val() != '') {
	    $.ajax({
	        type: 'GET',
	        url: '/mini/user/idcheck',
	        data: 'userID=' + $('#userID').val(),
	        dataType: 'json',
	        success: function(result) {
	            if (result == '0') {
	                $('#result').text('사용 가능한 아이디입니다.');
	                $(".joinBtn").prop("disabled", false);
	            } else {
	                $('#result').text('이미 사용중인 아이디입니다.');
	                $(".joinBtn").prop("disabled", true);
	            }
	        },
	        error: function(a, b, c) {
	            console.log(a, b, c);
	        }
	    });
    } else {
    	$('#result').text('아이디를 입력하세요.');
        $('#userID').focus();
    }
}

function loginCheckID() {
	if ($('#userID').val() != '') {
		$.ajax({
			type: 'GET',
			url: '/mini/user/idcheck',
			data: 'userID=' + $('#userID').val(),
			dataType: 'json',
			success: function(result) {
				if (result == '0') {
					$('#result').text('없는 아이디입니다.');
				} else {
						$('#result').text('');
				}
			},
			error: function(a, b, c) {
				console.log(a, b, c);
			}
		});
	} else {
		$('#result').text('아이디를 입력하세요.');
		$('#userID').focus();
	}
}

function IDPW() {
	var userName = $('#userName').val();
 	var userPhone = $('#userPhone').val();
 	
 	var postData = {'userName' : userName , 'userPhone' : userPhone};
 	$.ajax({
        type:'POST',
        url:'/mini/user/findUser',
        data: postData,
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        dataType : "json",

        success:function(data){
       	 		 $("#result").html("ID : "+data.userID+"<br> 임시비밀번호 : "+data.userPW);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown){
        	$("#result").html("정보를 다시 입력해주시길 바랍니다.");
        }
    });
}

function boardInsert() {
	var userID = $('#userID').val();
	var title = $('#title').val();
	var content = $('#content').val();
	
	var postData = {'userID' : userID , 'title' : title, 'content' : content};
	$.ajax({
		type:'POST',
		url:'/mini/board/insert',
		data: postData,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json",
		
		success:function(result){
			if(result==0){
				$("#result").html("내용을 입력하세요.");
			}else{
				location.href = "/mini/board/list";
				$("#result").html("글쓰기 성공");
			}
		},
		error: function (XMLHttpRequest, textStatus, errorThrown){
			$("#result").html(result);
		}
	});
}

function boardUpdate() {
	var bno = $('#bno').val();
	var title = $('#title').val();
	var content = $('#content').val();
	
	var postData = {'bno' : bno , 'title' : title, 'content' : content};
	$.ajax({
		type:'POST',
		url:'/mini/board/update',
		data: postData,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json",
		
		success:function(result){
			if(result==0){
				$("#result").html("내용을 입력하세요.");
			}else{
				location.href = "/mini/board/list";
				$("#result").html("글수정 성공");
			}
		},
		error: function (XMLHttpRequest, textStatus, errorThrown){
			$("#result").html(result);
		}
	});
}

