<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Scope Test</h1>
	
	<h3>request scope</h3>
	\${vo.no } : ${vo.no }<br/>
	\${vo.name } : ${vo.name }<br/>
	
	<h3>session scope</h3>
	\${sessionScope.vo.no } : ${sessionScope.vo.no }<br/>
	\${sessionScope.vo.name } : ${sessionScope.vo.name }<br/>
	
</body>
</html>