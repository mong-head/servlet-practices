# Servlet Practices

* tomcat & eclipse 연동

## 1. helloweb

### 1-1. web.xml

* deployment description

### 1-2. HelloServlet

* doGet 함수만 작성해서 확인해봄 (확인 : http://localhost:8080/helloweb/hello)

<img src="https://user-images.githubusercontent.com/52481037/119318487-59b37380-bcb4-11eb-9ea3-031d4e13f32e.png" width="50%"/>

* IOC (Inversion of Control Container)
    * 객체에 대한 제어권 역전됨
    * HelloServlet class 만드는 것만 하면 됨. 호출은 내가 안하고  tomcat - container가 함


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