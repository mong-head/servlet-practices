<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header tag -->
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	
	<!-- table tag -->
	<table border='1' cellspacing='0'>
		<!-- table row : 3 -->
		<tr>
			<!-- 테이블 제목? table header?-->
			<th>number</th>
			<th>title</th>
			<th>writer</th>
		</tr>
		<tr>
			<!-- table data : 가로 3개면 세로도 3개-->
			<td>1</td>
			<td>hi</td>
			<td>dooly</td>
		</tr>
		<tr>
			<td>2</td>
			<td>why?</td>
			<td>mee</td>
		</tr>
		<tr>
			<td>3</td>
			<td>now</td>
			<td>nowhere</td>
		</tr>
	</table>
	
	
	<!-- img tag : self close tag 가짐 -->
	<br/> <!-- break tag -->
	<img src='images/dooly.jpg' style='width:80px; border:1px solid #999'/> <!-- 상대경로 --> <!-- design요소는 나중에 분리함 -->
	<img src='/helloweb/images/dooly.jpg' style='width:80px; border:1px solid #999'/> <!-- 절대경로 -->
	
	<!-- anchor tag -->
	<br/>
	<a href='form.jsp'>폼으로 가기</a>
	
	<!-- data 보내기 -->
	<br/>
	<a href='hello.jsp?name=mong&email=m@gmail.com'>hello</a> <!-- get method -->
	
	<!-- p tag -->
	<br/>
	<p>
	5월 24, 2021 1:47:40 오후 org.apache.catalina.core.StandardContext reload<br/>
	INFO: 이름이 [/helloweb]인 컨텍스트를 다시 로드하는 것을 완료했습니다.
	</p>

</body>
</html>