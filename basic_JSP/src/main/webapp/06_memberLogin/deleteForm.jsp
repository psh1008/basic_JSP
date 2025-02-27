<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  


<form action="./deletePro.jsp" method="post">

<h1>회원삭제</h1>
<table border="1">
<tr>
<td>PW</td>
<td><input type="text" name="pw" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="회원탈퇴">
</td>
</tr>
</table>

</form>

<%@ include file="./footer.jsp" %>  