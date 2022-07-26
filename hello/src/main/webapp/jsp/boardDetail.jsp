<%@page import="com.txt.borad.BoardVO"%>
<%@page import="com.txt.borad.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	BoardVO vo = dao.getBoard(Integer.parseInt(bno));
	%>
	<c:set var="boards" value=<%=vo %>/>
	
	<table border='1'>
		<tr>
			<td>|글번호|</td>
			<td></td>
		</tr>
		<tr>
			<td>|제목|</td>
			<td><c:out value="${boards.title}"></c:out></td>
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
	<%
	String user = (String) session.getAttribute("loginId");
	if (user != null && user.equals(vo.getWriter())) {
	%>
	<a href="updateForm.jsp?bno=<%=vo.getBoardId()%>">수정화면</a>
	<a href="delete.jsp?bno=<%=vo.getBoardId()%>">삭제</a>
	<%
	}
	%>
	<a href="boardList.jsp">글목록으로</a>

</body>
</html>