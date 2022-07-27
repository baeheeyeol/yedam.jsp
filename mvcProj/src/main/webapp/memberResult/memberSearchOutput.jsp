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
	<h3>검색결과</h3>
	<c:if test="${!empty member }">
		<p>${member.id }/${member.name }/${member.passwd }/${member.mail }
		</p>
	</c:if>
	<jsp:include page="home.jsp"></jsp:include>

</body>
</html>