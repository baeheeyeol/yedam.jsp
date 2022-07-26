<%@page import="com.txt.borad.BoardVO"%>
<%@page import="com.txt.borad.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String bno = request.getParameter("bno");
	BoardDAO dao = new BoardDAO();
	BoardVO vo = dao.getBoard(Integer.parseInt(bno));
	%>
	<form action="update.jsp">
		<table border="1">
			<tr>
				<th>글번호</th>
				<td><input type="text" name="bid" value="<%=vo.getBoardId()%>"
					readonly></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="btitle" value="<%=vo.getTitle()%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="bcontent"
					value="<%=vo.getContent()%>"></td>
			</tr>
			<tr>
				<td>
					<%
					String user = (String) session.getAttribute("loginId");
					if (user != null && user.equals(vo.getWriter())) {
					%> <input type="submit" value="수정"> <%
					 } else {
 					%> <%
					 }
 					%>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>