<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>�Խñ� ���</h2>
<table width="100%">
	<tr><th>�۹�ȣ</th><th>�� ��</th><th>�ۼ���</th>
		<th>�ۼ���</th></tr>
<c:forEach items="${LIST}" var="BBS">
<tr><td>${BBS.no}</td><td>${BBS.title}</td><td>${BBS.id}</td><td>${BBS.date}</td><td>${BBS.content}</td></tr>
</c:forEach>
</table>
</div>
</body>
</html>