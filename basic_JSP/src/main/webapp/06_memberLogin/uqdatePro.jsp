<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<% 

 String pw = request.getParameter("pw");
 String name = request.getParameter("name");
 String sex = request.getParameter("sex");
 
 boolean pass = dao.checkPw(dao.getLog(), pw);

%>

<% if(pass){
	dao.updateNameAndSex(dao.getLog(), name, sex);
%><script>
	msgGoMain("회원수정 완료");
</script>
<%}else{ 
	
%>
<script>
	msgGoMain("비밀번호가 일치하지 않습니다");
</script>
<%}
%>