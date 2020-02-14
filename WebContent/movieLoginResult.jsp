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
		width: 500px;
		margin: 0 auto;
		min-height: 660px;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp" flush="false"/>

	<section>
		<%
			String id = request.getParameter("id");
			String pass = request.getParameter("password");
			
			if(id.equals(pass)){
				session.setAttribute("Auth", id);
				response.sendRedirect("home.jsp");
			} else {
				out.println("로그인에 실패했습니다.<br>");
				out.println("<a href='movieLoginForm.jsp'>form으로 돌아가기</a>");
			}
			
		%>
	</section>
	<jsp:include page="include/footer.jsp" flush="false"/>
</body>
</html>