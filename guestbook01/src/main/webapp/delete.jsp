
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); //한글로 나오도록!
	long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);
	
	String real_password = new GuestbookDao().findPassword(vo);
	new GuestbookDao().delete(vo);
	if(password.equals(real_password)){
		response.sendRedirect(request.getContextPath());
	}
	else{
		response.sendRedirect(request.getContextPath()+"/index.jsp?alert=true");			
	}
%>