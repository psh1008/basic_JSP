<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<% 
int idx = -1;
dao.updateLog(idx);
%>
<script>
	msgGoMain("로그아웃 성공!");
</script>