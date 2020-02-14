<%@page import="cgvCalss.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="cgvCalss.MovieManager" scope="application"/>
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
	
	.addWrap {
		text-align: right;
		margin-top: 50px;
	}
	
	.addWrap a{
		background-color: #fac57d;
		border-radius: 5px;
		text-decoration: none;
		color: #fff;
		font-weight: bold;
		padding: 5px 10px;
	}
	
	div.list_none {
		height: 600px;
		line-height: 600px;
	}
	
	div.list_none h1 {
		color: #344d2f;
	}
	
	#movieList {
		padding: 0 50px;
		overflow: hidden;
		min-height: 590px;
	}
	
	.movie_list {
		border:1px solid #000;
		text-align: center;
		width: 300px;
		float: left;
		margin-right: 25px;
		margin-top: 20px;
	}
	
	.movie_list:nth-child(5n){
		margin-right: 0;
	}
	
	.movie_list a {
		display: block;
		text-decoration: none;
		color: #000;
	}
	
	.movie_list img {
		width: 100%;
		height: 420px;
	}
	
	.movie_list p {
		padding: 15px 0;
		font-size: 20px;
	}
	
	.movie_list a:hover p {
		font-weight: bold;
		color: #fac57d;
	}
	
	.movie_list:hover {
		border:1px solid #a81817;
	}
	
</style>
</head>
<body>
	<%
		ArrayList<MovieInfo> list = movieMgr.getList();
		//list.clear();
		//list.remove(8);
	%>
	<jsp:include page="include/header.jsp" flush="false"/>
	<section id="movieList">
		<%
			if(list.size() == 0){
				out.println("<div class='list_none'><h1>상영영화가 없습니다.</h1></div>");
			} else {
				for(int i=0; i<list.size(); i++){
					MovieInfo movie = list.get(i);
					out.println("<div class='movie_list'><a href='movieDetail.jsp?index="+i+"'>");
					out.println("<img src='image/"+ movie.getFile() +"' alt='"+ movie.getTitle() +"'>");
					out.println("<p>"+ movie.getTitle() +"</p>");
					out.println("</a></div>");
				}
			}
		%>
	</section>
	<div class="addWrap">
		<a href="movieForm.jsp">상영 영화 추가하기</a>
	</div>
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>