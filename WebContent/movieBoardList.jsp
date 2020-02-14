<%@page import="java.text.SimpleDateFormat"%>
<%@page import="cgvCalss.MovieBoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mBoardMgr" class="cgvCalss.MovieBoardManager" scope="application"/>
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
	
	.board_list {
		width: 1000px;
		margin: 0 auto;
		min-height: 660px;
	}
	
	.board_list h1 {
		color: #000;
		border-bottom: 3px solid #000;
	}
	
	.board_list table {
		width: 100%;
		border-collapse: collapse;
	}
	
	.board_list tr {
		border-bottom: 1px solid #000;
	}
	
	.board_list th, 
	.board_list td {
		padding: 10px;
	}
	
	td.title {
		width: 500px;
		padding-left: 30px;
	}
	
	td.title a {
		text-decoration: none;
		color: #000;
	}
	
	td.writer {
		text-align: center;
		color: #aaa;
		font-size: 14px;
	}
	
	td.time {
		padding-right: 30px;
		text-align: right;
		font-size: 14px;
	}
	
	.post_none {
		text-align: center;
	}
	
	.btns {
		margin: 20px 0;
		text-align: right;
	}
	
	.btns button {
		border:none;
		background-color: #fac57d;
		border-radius: 5px;
		color: #fff;
		font-weight: bold;
		padding: 5px 10px;
		cursor: pointer;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#Writing").click(function(){
			location.href = "movieBoardForm.jsp";
		})
		
		$("#removeAll").click(function(){
			location.href = "movieBoardDelete.jsp";
		})
	})
</script>
</head>
<body>
	<%
		ArrayList<MovieBoardInfo> list = mBoardMgr.getList();
	%>
	<jsp:include page="include/header.jsp" flush="false"/>
	
	<section class="board_list">
		<h1>게시판</h1>
		<table>
			<%
				if(list.size() == 0){
					out.println("<tr>");
					out.println("<th colspan='3'>게시글이 없습니다.</th>");
					out.println("</tr>");
				} else {
					for(int i=0; i<list.size(); i++){	
						MovieBoardInfo mBoard = list.get(i);
						out.println("<tr>");
						out.println("<td class='title'><a href='movieBoardDetail.jsp?index="+i+"'>" + mBoard.getTitle() + "</a></td>");
						out.println("<td class='writer'>"+ mBoard.getName() +"</td>");
						
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
						String time = sdf.format(mBoard.getRegisterDate());
						
						out.println("<td class='time'>"+ time +"</td>");
						out.println("</tr>");
					}
				}
			%>
		</table>
		<div class="btns">
			<button id="Writing">글쓰기</button>
			<button id="removeAll">모두삭제</button>
		</div>
	</section>
	
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>