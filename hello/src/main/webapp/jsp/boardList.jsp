<%@page import="com.txt.borad.BoardDAO"%>
<%@page import="com.txt.borad.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성이자</th>
				<th>방문횟수</th>
			</tr>
		</thead>
		<tbody>
			<%
			BoardDAO bDAO = new BoardDAO();
			List<BoardVO> list = bDAO.boardList();
			for (BoardVO vo:list) {
			%>
			<tr>
				<td><a href="boardDetail.jsp?id=<%=vo.getBoardId()%>"><%=vo.getBoardId()%></a></td>
				<td><%=vo.getTitle()%></td>
				<td><%=vo.getWriter()%></td>
				<td><%=vo.getCreateDate()%></td>
				<td><%=vo.getCnt()%></td>
				<%
				}
				%>
			</tr>
		</tbody>
	</table>
</body>
</html>