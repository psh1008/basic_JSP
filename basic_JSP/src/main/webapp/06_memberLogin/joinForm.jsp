<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  


<form action="./joinPro.jsp" method="post">

<h1>회원가입 페이지</h1>
<table border="1">
<tr>
<td>회원가입 ID</td>
<td><input type="text" name="id" required/></td>
</tr>
<tr>
<td>회원가입 PW</td>
<td><input type="password" name="pw" required/></td>
</tr>
<tr>
<td>회원가입 name</td>
<td><input type="text" name="name" required/></td>
</tr>
<tr>
<td>회원가입 성별</td>
<td>
<input type="radio" name="sex" value="남성" required/>남성
<input type="radio" name="sex" value="여성" required/>여성
</td>
</tr>
<tr>
<td><input type="submit" value="회원가입"></td>
</tr>
</table>

</form>

<%@ include file="./footer.jsp" %>  