<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 받음
	request.setCharacterEncoding("utf-8"); //한글로 나오도록!
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	boolean result = new EmaillistDao().insert(vo);
	
	//응답
	response.sendRedirect(request.getContextPath()); // add.jsp에서 바로 index.jsp로 가는게 아니라 add.jsp가 client에 리다이렉트하라는 요청을 보내는 것
%>

</html>