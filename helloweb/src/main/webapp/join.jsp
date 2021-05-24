<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String birth = request.getParameter("birthYear"); // 정수도 string으로
	String gender = request.getParameter("gender");
	String[] hobbies = request.getParameterValues("hobby");
	String profile = request.getParameter("profile");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br/>
	<%=password %>
	<br/>
	<%=birth %>
	<br/>
	<%=gender %>
	<br/>
	<%
		int i = 0;
		for(String hobby : hobbies){
			i++;
	%>
			<h6>취미 <%=i %>: <%=hobby %></h6>
	<%
		}
	%>
	<br/>
	
	<p>
	<%=profile.replaceAll("\n", "<br/>") %>
	</p>
</body>
</html>