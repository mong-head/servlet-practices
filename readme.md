# Servlet Practices

* tomcat & eclipse 연동

## 1. helloweb

### 1-1. web.xml

* deployment description

### 1-2. HelloServlet


### 1-3. JSP / HTML

* tag.jsp
	* tag 연습 : header, table, img, break, anchor, p tag
	* tag 내에는 design부분(style)은 넣지 않는 것이 유지보수에 좋음
	* data
		* data 보내기
			* get method : ? 
				* query string :  url에 data 붙여서 보내기
				* 보안상 좋지 않음, 길이 제한이 있어서 많은 데이터를 못 줌
				
				```jsp
				<a href='hello.jsp?name=mong'>hello</a>
				```
				
			* post method
				* foam.jsp
				``` jsp
				<form action='/helloweb/join.jsp' method="get"> <!-- method는 post등등 가능 -->
					email : <input type='text' name='email' value='' />
					<input type='submit' value='sign up' />
				</form>
				```
		* data 받기
			```jsp
			<%
				// 구문 들어갈 수 있음
				String name = request.getParameter("name");
			%>
			...
			<body>
				<h1>hello? <%=name %></h1>
			</body>
			```