<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movie" class="cgvCalss.MovieInfo"/>
<jsp:setProperty name="movie" property="*" />
<jsp:useBean id="movieMgr" class="cgvCalss.MovieManager" scope="application"/>

<%
	movieMgr.addMovie(movie);
	response.sendRedirect("movieList.jsp");
%>