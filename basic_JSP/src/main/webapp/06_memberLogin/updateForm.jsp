<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  


<form action="./uqdatePro.jsp" method="post">

<h1>회원수정</h1>
<table border="1">
<tr>
<td>아이디</td>
<td><input type="text" name="id" value="<%= dao.getId(dao.getLog()) %>" readonly /></td>
</tr>
<tr>
<td>패스워드</td>
<td><input type="password" name="pw" required/></td>
</tr>
<tr>
<td>이름</td>
<td><input type="text" name="name" value="<%= dao.getName(dao.getLog()) %>" /></td>
</tr>
<tr>
<td>성별</td>
<td>
<input type="radio" name="sex" value="남성" <%if(dao.getSex(dao.getLog())){ %> checked <%} %> />남성
<input type="radio" name="sex" value="여성" <%if(!dao.getSex(dao.getLog())){ %> checked <%} %> />여성
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="정보수정">
</td>
</tr>
</table>

</form>

<%@ include file="./footer.jsp" %>  