# Servlet Practices

* tomcat & eclipse 연동

## 목차
[1. helloweb](##1-helloweb)

[2. emaillist01](##2-emaillist01)

[3. guestbook01](##3-guestbook01)

## 1. helloweb

### 1-1. web.xml

* deployment description

* web.xml
	* java.sun.com -> JAVA.sum.com

	```xml
	<?xml version="1.0" encoding="UTF-8"?>
	<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns="http://JAVA.sun.com/xml/ns/javaee" 
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd" 
	version="2.5">
	  <display-name>helloweb</display-name>
	
	  <welcome-file-list>
	    <welcome-file>index.html</welcome-file>
		<welcome-file>index.jsp</welcome-file>	
	    <welcome-file>index.htm</welcome-file>
	    <welcome-file>default.html</welcome-file>
	    <welcome-file>default.htm</welcome-file>
	    <welcome-file>default.jsp</welcome-file>
	  </welcome-file-list>
	
	  <servlet>
	    <description></description>
	    <display-name>HelloServlet</display-name>
	    <servlet-name>HelloServlet</servlet-name>
	    <servlet-class>com.douzone.helloweb.controller.HelloServlet</servlet-class>
	  </servlet>
	  <servlet-mapping>
	    <servlet-name>HelloServlet</servlet-name>
	    <url-pattern>/hello</url-pattern>
	  </servlet-mapping>
	</web-app>
	```

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
## 2. emaillist01

* pom에 mariadb driver 넣기

## 3. guestbook01

|index.jsp|데이터 넣기|데이터 삭제:비번틀림|데이터 삭제:비번틀리지 않음|
|---|---|---|---|
|![K-030](https://user-images.githubusercontent.com/52481037/119452719-a0b36e80-bd71-11eb-909b-121945209903.jpg)|![K-031](https://user-images.githubusercontent.com/52481037/119453410-5e3e6180-bd72-11eb-925f-5735c5028b01.jpg)|![K-032](https://user-images.githubusercontent.com/52481037/119453462-6b5b5080-bd72-11eb-9c2c-8c6d85edf492.jpg)|![K-033](https://user-images.githubusercontent.com/52481037/119453546-7f9f4d80-bd72-11eb-8a16-a32886c0fdcb.jpg)|

