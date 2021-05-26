<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
	String alert = request.getParameter("alert");
	if("true".equals(alert)){
		out.println("<script>alert('비번 틀림!');</script>");
		String href = request.getContextPath()+"/gb";
		//out.println("<script>window.location.href=\"http://localhost:8080/guestbook02/gb\"</script>");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/gb" method="post">
		<input type='hidden' name="a" value="add">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<%
		int idx=0;
		for(GuestbookVo vo : list) {
			String msg = vo.getMessage();
			msg = msg.replace("\n","<br/>");
	%>
		<br>
		<table width=510 border=1>
			<tr>
				<td><%=++idx %></td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getRegDate().split(" ")[0] %></td>
				<td><a href="<%=request.getContextPath()%>/gb?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan=4><%=msg %></td>
			</tr>
		</table>
	<%
		}
	%>
	
</body>
</html>