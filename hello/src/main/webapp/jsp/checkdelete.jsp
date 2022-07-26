<%@page import="com.txt.borad.BoardDAO"%>
<%@page import="com.txt.borad.BoardVO"%>
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
    BoardVO vo = new BoardVO();
    BoardDAO dao = new BoardDAO();
    %>
    //<input type ="button" onclick ="deleteBoard()" value ="삭제">
    <input type="button" value ="취소" onclick ="window.close()">
   
    <script>
    function deleteBoard(){
    	<%
        String id = request.getParameter("bno");
        vo.setBoardId(Integer.parseInt(id));
        dao.deleteBoard(vo);
        response.sendRedirect("boardList.jsp");
        %>
    }
  
    </script>
</body>
</html>