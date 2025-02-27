<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<% 

 String pw = request.getParameter("pw");
 
 boolean pass = dao.checkPw(dao.getLog(), pw);

%>

<% if(pass){
	dao.deleteMember(dao.getLog());
%><script>
	msgGoMain("회원탈퇴 완료");
</script>
<%}else{ 
	
%>
<script>
	msgGoMain("비밀번호가 일치하지 않습니다");
</script>
<%}
%>