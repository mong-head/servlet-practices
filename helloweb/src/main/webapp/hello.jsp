<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%=
//실행되는 것은 못들어감
	// int i = 10; //구문
//표현식은 들어감 (변수, 연산식, ... ) : 값으로 나오는 것
	// 10
%>
<%
// 구문 들어갈 수 있음
String name = request.getParameter("name");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>hello?</h1>
</body>
</html>