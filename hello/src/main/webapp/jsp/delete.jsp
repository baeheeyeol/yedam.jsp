<%@page import="com.txt.borad.BoardDAO"%>
<%@page import="com.txt.borad.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    BoardVO vo = new BoardVO();
    BoardDAO dao = new BoardDAO();
    String id = request.getParameter("bno");
    vo.setBoardId(Integer.parseInt(id));
    dao.deleteBoard(vo);
    response.sendRedirect("boardList.jsp");
    %>