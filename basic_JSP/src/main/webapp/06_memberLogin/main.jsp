<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="./header.jsp" %>  

<%



%>
<h1>메인 : 로그인 상태</h1>
<%if(dao.getLog() == -1){
%>

<h1> 로그아웃 </h1><br>
<%}else{
%>
<h1> <%= dao.getName(dao.getLog())  %> </h1><br>
<%}%>

<%@ include file="./footer.jsp" %>  