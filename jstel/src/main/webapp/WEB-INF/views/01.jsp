<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("newline","\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>use EL</h1>
	<h3>print Value</h3>
	\${ival } : ${ival } <br/>
	\${lval } : ${lval } <br/>
	\${bval } : ${bval } <br/>
	\${fval } : ${fval } <br/>
	<p style="border:1px solid #00f; padding:10px">
		\${fn:replace(sval,newline,\"<br/>") }? <br/>${fn:replace(sval,newline,"<br/>") } <br/>
	</p>
	
	<h3>print Object</h3>
	--\${obj }-- : --${obj }-- (빈객체)<br/>
	\${vo.no } : ${vo.no }<br/>
	\${vo.name } : ${vo.name }<br/>
	
	<h3>print Map</h3>
	\${map.ival } : ${map.ival }<br/>
	\${map.lval } : ${map.lval }<br/>
	\${map.bval } : ${map.bval }<br/>
	\${map.fval } : ${map.fval }<br/>
	\${map.sval } : ${map.sval }<br/>
	
	<h3>산술 연산</h3>
	\${3*10+20 } : ${3*10+20 }<br/>
	\${ival+10 } : ${ival+10 }<br/>
	
	<h3>관계 연산</h3>
	\${ival > 10 } : ${ival > 10 }<br/>
	\${ival < 5 } : ${ival < 5 }<br/>
	\${obj == null } : ${obj == null } (null은 자바 코드, 안쓰는 것이 좋음)<br/> <!-- null은 자바코드 : 안쓰는 것이 좋음 -->
	\${vo != null } : ${vo != null } (null은 자바 코드, 안쓰는 것이 좋음)<br/>
	\${empty obj } : ${empty obj } (null대신 사용 : empty)<br/>
	\${not empty obj } : ${not empty obj }<br/>
	
	<h3>논리 연산</h3>
	\${ival == 10 && lval < 10000 } : ${ival == 10 && lval < 10000 }<br/>
	
	<h3>request parameter value</h3>
	--\${param.a }-- : --${param.a }--</br>
</body>
</html>