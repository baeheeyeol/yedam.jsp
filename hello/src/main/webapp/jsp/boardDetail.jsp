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
	HttpSession sc = null;
	String bno = request.getParameter("id");
	BoardDAO dao = new BoardDAO();
	sc = request.getSession();
	if (sc.isNew()) {
		dao.updateCnt(Integer.parseInt(bno));
	}
	BoardVO vo = dao.getBoard(Integer.parseInt(bno));
	%>
	<table border='1'>
		<tr>
			<td>|글번호|</td>
			<td><%=vo.getBoardId()%></td>
		</tr>
		<tr>
			<td>|제목|</td>
			<td><%=vo.getTitle()%></td>
		</tr>
		<tr>
			<td>|내용|</td>
			<td><%=vo.getContent()%></td>
		</tr>
		<tr>
			<td>|작성자|</td>
			<td><%=vo.getWriter()%></td>
		</tr>
		<tr>
			<td>|작성일시|</td>
			<td><%=vo.getCreateDate()%></td>
		</tr>
		<tr>
			<td>|조회수</td>
			<td><%=vo.getCnt()%></td>
		</tr>
	</table>
	<a href="boardList.jsp">글목록으로</a>
</body>
</html>