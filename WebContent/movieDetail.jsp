<%@page import="cgvCalss.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="cgvCalss.MovieManager" scope="application"/>
<%
	String mIdx = request.getParameter("index");
	int index = Integer.parseInt(mIdx);
	ArrayList<MovieInfo> list = movieMgr.getList();
	MovieInfo movie = list.get(index);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}

	section.movie_detail {
		width: 850px;
    	margin: 70px auto;
    	overflow: hidden;
	}
	
	.movie_detail img {
		float: left;
		width: 300px;
	}
	
	.movie_detail .text {
		float: right;
		width: 500px;
	}
	
	.movie_detail .text h2,
	.movie_detail .text h3{
		margin-bottom: 20px;
	}
	
		
	.movie_detail .text p {
		text-align: justify;
    	line-height: 25px;
	}
	
	
</style>
</head>
<body>
	<jsp:include page="include/header.jsp" flush="false"/>
	<section class="movie_detail">
		<img src="image/<%=movie.getFile() %>" alt="<%=movie.getTitle() %>" />
		<div class="text">
			<h2><%=movie.getTitle() %></h2>
			<h3>&lt;줄거리&gt;</h3>
			<p>
				<%=movie.getExplain() %>
			</p>
		</div>
	</section>
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>