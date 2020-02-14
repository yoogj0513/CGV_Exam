<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	section {
		width: 300px;
		margin: 0 auto;
		min-height: 500px;
		padding-top: 160px;
	}
	
	section fieldset {
		padding: 20px;
	}
	
	section label {
		width: 80px;
		float: left;
	}
	
	.btn {
		text-align: center;
		margin-top: 20px;
	}
	
	.btn input {
		border:none;
		background-color: #fac57d;
		border-radius: 5px;
		color: #fff;
		font-weight: bold;
		padding: 5px 10px;
		cursor: pointer;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp" flush="false"/>
	
	<section>
		<form action="movieLoginResult.jsp" method="post">
			<fieldset>
				<legend>로그인</legend>
				<p>
					<label>아이디 </label>
					<input type="text" name="id"/>
				</p>
				<p>
					<label>비밀번호 </label>
					<input type="password" name="password"/>
				</p>
				<p class="btn">
					<input type="submit" value="로그인"/>
				</p>
			</fieldset>
		</form>
	</section>
	
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>