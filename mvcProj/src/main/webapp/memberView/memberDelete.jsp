<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원삭제</h3>
	<c:if test="${!empty error }">
	<p>${error }</p>
	</c:if>
	<c:if test="${!empty result }">
	<p>${result }</p>
	</c:if>
	<c:if test="${empty member }">
		<form action="${pageContext.request.contextPath}/memberSearch.do"
			method="get">
			아이디: <input type="text" name="id"><br> <input
				type="hidden" name="job" value="delete"> <input
				type="submit" value="조회">
		</form>
	</c:if>
	<c:if test="${!empty member }">
		<form action="${pageContext.request.contextPath}/memberDelete.do"
			method="post">
			아이디: <input type="text" name="id" value="${member.id }" readonly><br>
			<input type="submit" value="삭제">
		</form>
	</c:if>
</body>
</html>