<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 구문 들어갈 수 있음
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>hello? <%=name %> (<%=email %>)</h1>
</body>
</html>