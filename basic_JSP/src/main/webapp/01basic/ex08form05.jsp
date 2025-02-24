<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생등록 폼</title>
</head>
<body>
	<form action="ex09form05pro.jsp" method="post">
	<table border='1'>
	<tr>
	<td>학번 </td>
	<td><input type="number" name ="sub1"></td>
	</tr>
	<tr>
	<td>이름 </td>
	<td><input type="text" name ="sub2"></td>
	</tr>
	<tr>
	<td>학년 </td>
	<td>
	1학년<input type="radio" name="sub3" value="1학년" />
	2학년<input type="radio" name="sub3" value="2학년" />
	3학년<input type="radio" name="sub3" value="3학년" />
	4학년<input type="radio" name="sub3" value="4학년" />
 	</td>
	</tr>
	<tr>
	<td>선택과목 </td>
	<td>
	<select name="sub4" >
    <option value="javascript" >JavaScript</option>
    <option value="php">PHP</option>
    <option value="java">Java</option>
    <option value="golang">Golang</option>
    <option value="python">Python</option>
    <option value="c#">C#</option>
    <option value="C++">C++</option>
    <option value="erlang">Erlang</option>
  	</select>
	</td>
	</tr>
	<tr>
	<td>취미 </td>
	<td>
	운동<input type="checkbox" name ="sub5" value ="운동" checked>
	독서<input type="checkbox" name ="sub5" value ="독서">
	공부<input type="checkbox" name ="sub5" value ="공부">
	쇼핑<input type="checkbox" name ="sub5" value ="쇼핑">
	</td>
	</tr>
	<tr>
	<td>메모 </td>
	<td>
	<textarea rows="10" cols="50" name ="sub6"></textarea>
	</td>
	</tr>
	<tr>
	<td colspan="2"> <input type="submit" value="입력완료" /> </td>
	</tr>
	</table>
	</form>
</body>
</html>