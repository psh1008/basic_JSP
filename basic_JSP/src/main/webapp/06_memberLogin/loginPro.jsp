<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<% 
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 
 int idx = dao.loginAccept(id, pw);

%>

<% if(idx == -1){
%><script>
	msgGoMain("ID 또는 Pw가 일치하지 않습니다");
</script>
<%}else{ 
	dao.updateLog(idx);
%>
<script>
	msgGoMain("로그인 성공!");
</script>
<%}
%>