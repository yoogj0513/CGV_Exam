<%@page import="java.text.SimpleDateFormat"%>
<%@page import="cgvCalss.MovieBoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mBoardMgr" class="cgvCalss.MovieBoardManager" scope="application"/>
<%
	String mIdx = request.getParameter("index");
	int index = Integer.parseInt(mIdx);
	ArrayList<MovieBoardInfo> list = mBoardMgr.getList();
	MovieBoardInfo mBoard = list.get(index);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
	String time = sdf.format(mBoard.getRegisterDate());
%>
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
	
	section.post {
		width: 900px;
		margin: 0 auto;
		min-height: 660px;
		position: relative;
	}
	
	.post h2 {
		text-align: center;
		padding: 15px;
	}
	
	.post .writeInfo {
		text-align: right;
		padding: 15px 0;
	}
	
	.post .writeInfo span {
		padding: 10px;
	}
	
	.post .textArea{
		text-align: center;
		padding: 15px;
		min-height: 430px;
	}
	
	.post .textArea p {
		text-align: left;
		padding: 10px 30px;
	}
	
	.mMovieList {
		position:absolute;
		bottom: 0;
		right: 0;
		background-color: #fac57d;
		border-radius: 5px;
		text-decoration: none;
		color: #fff;
		font-weight: bold;
		padding: 5px 10px;
	}
	
</style>
</head>
<body>
	<jsp:include page="include/header.jsp" flush="false"/>
	
	<section class="post">
		<h2><%=mBoard.getTitle() %></h2>
		<div class="writeInfo">
			<span>작성자 : <%=mBoard.getName()%></span>
			<span>작성일 : <%=time %></span>
		</div>
		<div class="textArea">
			<%
				if(mBoard.getFile() != null){
					out.println("<img src='image/" + mBoard.getFile() + "' alt='이미지'>");			
				}
			%>
			<p><%=mBoard.getContent() %></p>
		</div>
		<a class="mMovieList" href="movieBoardList.jsp">게시판 목록으로 돌아가기</a>
	</section>
	
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>