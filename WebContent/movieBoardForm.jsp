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
	
	.form_wrap {
		width: 600px;
		margin: 0 auto;
		min-height: 640px;
		margin-top: 50px;
	}
	
	fieldset {
		padding: 20px;
	}
	
	.form_wrap p {
		margin: 15px 0;
	}
	
	.form_wrap label {
		margin: 5px 0;
		display: inline-block;
	}
	
	.form_wrap textarea {
		padding: 10px;
	}
	
	.form_wrap p.subBtn {
		text-align: center;
	}
	
	input[type='submit'] {
		padding: 5px 10px;
		background-color: #fac57d;
		color: #fff;
		border: none;
		font-weight: bold;
		border-radius: 5px;
		font-size: 16px;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp" flush="false"/>
	
	<section class="form_wrap">
		<form action="movieBoardResult.jsp" method="get">
			<fieldset>
				<legend>게시판 글쓰기</legend>
				<p>
					<label>제목 : </label>
					<input type="text" name="title"/>
				</p>
				<p>
					<label>작성자 이름 : </label>
					<input type="text" name="name"/>
				</p>
				<p>
					<label>내용</label>
					<textarea name="content" rows="15" cols="70"></textarea>
				</p>
				<p>
					<label>첨부 이미지 : </label>
					<input type="file" name="file"/>
				</p>
				<p class="subBtn">
					<input type="submit" value="추가"/>
				</p>
			</fieldset>
		</form>
	</section>
	
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>