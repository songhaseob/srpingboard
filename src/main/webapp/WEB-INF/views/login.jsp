<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	label{
	  display: inline-block;
	  width: 100px;
	}
	#sign{
		margin-left: 110px;
		width: 180px;
		height: 30px;
	}
	#in{
		width: 180px;
		height: 30px;
		margin-top: 10px;
	}
	div{
		display: inline;
		text-align: center;
	}
</style>
</head>
<body>
	<div>
	<form action="/board/main" method="get">
	<h1>로그인페이지</h1>
	<label>ID</label> <input id="in" type="text" name="userid" value="sally"><br>
	<label>PASSWORD</label> <input id="in" type="password" name="pass" value="sallyPass"><br>
	<br>
	<input id="sign" type="submit" value="SIGN IN">
	</form>
	</div>
</body>
</html>