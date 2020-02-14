<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mBoard" class="cgvCalss.MovieBoardInfo"/>
<jsp:setProperty name="mBoard" property="*" />
<jsp:useBean id="mBoardMgr" class="cgvCalss.MovieBoardManager" scope="application"/>
<%
	Date date = new Date();
	mBoard.setRegisterDate(date);
	mBoardMgr.addMovieBoard(mBoard);
	
	response.sendRedirect("movieBoardList.jsp");
%>