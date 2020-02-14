<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container">
		<style>
			.container {
				width: 1710px;
				margin: 0 auto;
			}
			
			h1 {
				text-align: center;
				color: #a81817;
				font-size: 40px;
				padding: 20px;
			}
			
			nav {
				background-color: #a81817;
				margin-bottom: 30px;
			}
			
			nav ul {
				list-style: none;
				overflow: hidden;
				width: 600px;
				margin: 0 auto;
			}
			
			nav li {
				float: left;
				width: 21.6%;
				text-align: center;
				padding: 10px;
			}
			
			nav a {
				text-decoration: none;
				color: #fff;
			}
			
			nav a:hover {
				font-weight: bold;
			}
		</style>
		<header>
			<h1>대구 CGV</h1>		
		</header>
		<nav>
			<ul>
				<li><a href="home.jsp">HOME</a></li>
				<li><a href="movieList.jsp">상영영화</a></li>
				<li><a href="movieTimetable.jsp">상영시간표</a></li>
				<li><a href="movieBoardList.jsp">게시판</a></li>
			</ul>
		</nav>