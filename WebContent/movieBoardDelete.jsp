<%@page import="cgvCalss.MovieBoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mBoardMgr" class="cgvCalss.MovieBoardManager" scope="application"/>
<%
	ArrayList<MovieBoardInfo> list = mBoardMgr.getList();
	list.clear();
	
	response.sendRedirect("movieBoardList.jsp");
%>