<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action='/helloweb/join.jsp' method="get"> <!-- method는 post등등 가능 -->
		email : <input type='text' name='email' value='' />
		<br/><br/>
		password : <input type='password' name='password' value='' />
		
		<br/><br/>
		
		birth : 
		<select name="birthYear">
			<option value="1996">1996</option>
			<option value="1997">1997</option>
			<option value="1998">1998</option>
		</select>
		<br/><br/>
		
		gender :
		female<input type="radio" name="gender" value="female" checked='checked' />
		male<input type="radio" name="gender" value="male" />
		<br/><br/>
		
		hobby :
		coding <input type="checkbox" name="hobby" value="coding" />
		drinking <input type="checkbox" name="hobby" value="drinking" />
		swimming <input type="checkbox" name="hobby" value="swimming" />
		singing <input type="checkbox" name="hobby" value="singing" />
		<br/><br/>
		
		introduce myself? : <br/>
		<textarea name="profile"></textarea>
		<br/><br/>
		
		<input type='submit' value='sign up' />
		
	</form>
	<br/>
	<br/>
	<a href='/helloweb/tag.jsp'>태그로 가기</a>
</body>
</html>