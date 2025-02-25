<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<% 
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 String name = request.getParameter("name");
 String sex = request.getParameter("sex");
 
 boolean pass = dao.checkIdDup(id);

%>

<% if(!pass){
%><script>
	msgGoMain("아이디 중복");
</script>
<%}else{ 
	dao.updateList(id, pw, name, sex);
%>
<script>
	msgGoMain("회원가입 성공!");
</script>
<%}
%>