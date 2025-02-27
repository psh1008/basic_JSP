<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<form action="./loginPro.jsp" method="post">

	<h1>로그인</h1>
	<table border="1">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" required /></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pw" required /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="로그인">
			</td>
		</tr>
	</table>

</form>

<%@ include file="./footer.jsp"%>
