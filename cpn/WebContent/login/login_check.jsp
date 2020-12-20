<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- login_check : 로그인되야만 수정화면으로 들어갈 수 있도록 처리 
					=> 여기다 작성 후 include로 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_check</title>
</head>
<body>

<%

	//세션에서 읽어서 아이디 없으면 로그인하세요!
	//		-> 로그인상태에서 시간만료되면 세션만료로 로그아웃되어 로그인해주세요 뜨게  
	String l_userid = (String)session.getAttribute("userid");
	
	if(l_userid==null || l_userid.isEmpty()){%>
	<script type="text/javascript">
		alert("회원정보 수정하려면 먼저로그인하세요");
		location.href="../login/login.jsp";
	</script>
		
	<%}%>
</body>
</html>