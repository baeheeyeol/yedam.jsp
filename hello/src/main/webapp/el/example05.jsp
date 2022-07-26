<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>example05.jsp</title>
</head>
<body>
	<%
	for (int i = 1; i <= 10; i++) {
		out.print("i: " + i + "<br>");
	}
	String[] str = { "홍길동", "김유신", "김민식" };
	for (String name : str) {
		System.out.print(name);
	}
	String fruits = "사과,바나나,수박,복숭아";
	%>
	<c:set var="names" value="<%=str%>" />
	<c:set var="fruit2" value="<%=fruits%>" />

	<hr>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:out value='i: ${i }'></c:out>
		<br>
	</c:forEach>
	<ul>
		<c:forEach var="name" items="${names}">
			<li>${name}</li>
		</c:forEach>
	</ul>
	<ul>
		<c:forTokens items="${fruit2}" delims="," var="fruit">
			<li>${fruit}</li>
		</c:forTokens>
	</ul>

</body>
</html>