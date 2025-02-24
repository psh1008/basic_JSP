<%@page import="javax.security.auth.Subject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
int stNum = Integer.parseInt(request.getParameter("sub1"));
String name = request.getParameter("sub2");
String age = request.getParameter("sub3");
String sub = request.getParameter("sub4");
String[] hobby = request.getParameterValues("sub5");
String content = request.getParameter("sub6");

if(name.trim().isEmpty() || sub.trim().isEmpty() || hobby == null || content.trim().isEmpty()){
	throw new Exception();
}

%>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 처리 페이지</title>
</head>
<body>

<table border='1'>
<tr>
<td>학번</td>
<td>이름</td>
<td>학년</td>
<td>과목</td>
<td>취미</td>
<td>메모</td>
</tr>
<tr>
	<td><%= stNum %></td>
	<td><%= name %></td>
	<td><%= age %></td>
	<td><%= sub %></td>
	<td>
	<% for(int i=0;i<hobby.length;i++)
	out.print(hobby[i] + " ");
	%>
	</td>
	<td><%= content %></td>
</tr>
</table>
<% }catch(Exception e){
	%>
	<script>
	alert('비어있는 값이 있습니다');
   // location.href = 'ex08form05.jsp';
  //  history.go(-1);
  //  history.back();
	</script>
	

<%
response.sendRedirect("ex08form05.jsp");
} %>
</body>
</html>