# Servlet Practices

* tomcat & eclipse 연동

## 목차
[1. helloweb](#1-helloweb)

[2. emaillist01](#2-emaillist01)

[3. guestbook01](#3-guestbook01)


## 0. database and result

### 0-1. database

|emaillist|guestbook|
|:---:|:---:|
|<img src="https://user-images.githubusercontent.com/52481037/119463795-0fe29000-bd7d-11eb-8ca2-23b385ffe1f1.jpg" width="100%">|![K-037](https://user-images.githubusercontent.com/52481037/119466534-ab750000-bd7f-11eb-8965-9971940317a6.jpg)|

### 0-2. result

#### 1) emaillist

	|index.jsp|form.jsp|
	|:---:|:---:|
	|<img src="https://user-images.githubusercontent.com/52481037/119463052-54b9f700-bd7c-11eb-9b1e-1eada888ff55.jpg" width="40%"/>|<img src="https://user-images.githubusercontent.com/52481037/119463085-5d123200-bd7c-11eb-8855-bf9b39acb199.jpg" width="60%"/>|

#### 2) guestbook

	|index.jsp|데이터 넣기|데이터 삭제:비번틀림|데이터 삭제:비번틀리지 않음|
	|:---:|:---:|:---:|:---:|
	|![K-030](https://user-images.githubusercontent.com/52481037/119452719-a0b36e80-bd71-11eb-909b-121945209903.jpg)|![K-031](https://user-images.githubusercontent.com/52481037/119453410-5e3e6180-bd72-11eb-925f-5735c5028b01.jpg)|![K-032](https://user-images.githubusercontent.com/52481037/119453462-6b5b5080-bd72-11eb-9c2c-8c6d85edf492.jpg)|![K-033](https://user-images.githubusercontent.com/52481037/119453546-7f9f4d80-bd72-11eb-8a16-a32886c0fdcb.jpg)|


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

* directory

	```text
	src/main/java
		com.douzone.emaillist.dao
					| --- EmaillistDao
		com.douzone.emaillist.vo
					| --- EmaillistVo
	
	webapp
					| --- WEB-INF
									| --- web.xml
					| --- index.jsp
					| --- form.jsp
					| --- add.jsp
	```

* model1

	<img src="https://user-images.githubusercontent.com/52481037/119461535-c133f680-bd7a-11eb-9d14-6a745dbe553a.png" width="60%">

* redirect
	* insert/delete/update 인 경우, HTML response 보내지 않음
		* HTML response하는 경우, 새로고침하는 경우 해당 sql이 다시 수행됨
		* 같은 것이 여러개 추가되거나, 에러가 남
	* redirect : 다른 페이지로 이동
	* add.jsp는 redirect하라는 요청을 날리게 됨 ( WAS내부에서 add.jsp에서 바로 index.jsp로 가는 것이 아님)

* rendering
	* HTML + data(vo)


## 3. guestbook01

* directory

	```text
	src/main/java
		com.douzone.guestbook.dao
					| --- GuestbookDao
		com.douzone.guestbook.vo
					| --- GuestbookVo
	
	webapp
					| --- WEB-INF
									| --- web.xml
					| --- index.jsp
					| --- deleteform.jsp
					| --- delete.jsp
					| --- add.jsp
	```

* model 1

	<img src="https://user-images.githubusercontent.com/52481037/119465910-16720700-bd7f-11eb-85f9-c264c96b10e8.png" width="60%"/>


## 4. emaillist02

* directory

	```text
	src/main/java
		com.douzone.emaillist.controller
					| --- EmaillistController
		com.douzone.emaillist.dao
					| --- EmaillistDao
		com.douzone.emaillist.vo
					| --- EmaillistVo
	
	webapp
					| --- WEB-INF
									| --- web.xml
									| --- views
													| --- index.jsp
													| --- form.jsp
	```

* model 2

	<img src="https://user-images.githubusercontent.com/52481037/119599613-56d59180-be20-11eb-9f15-f0d94b319f04.jpg" width="60%"/>


## 5. guestbook02

* directory

	```text
	src/main/java
		com.douzone.guestlist.controller
					| --- GuestlistController
		com.douzone.guestlist.dao
					| --- GuestlistDao
		com.douzone.guestlist.vo
					| --- GuestlistVo
	
	webapp
					| --- WEB-INF
									| --- web.xml
									| --- views
													| --- index.jsp
													| --- deleteform.jsp
	```

* model 2

	<img src="https://user-images.githubusercontent.com/52481037/119599517-1d048b00-be20-11eb-9e9b-7c9c99dccb2f.jpg" width="60%"/>
