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
<table width="100%" id ="blist">
	<tr><th>�۹�ȣ</th><th>�� ��</th><th>�ۼ���</th>
		<th>�ۼ���</th></tr>
<c:forEach items="${LIST}" var="BBS">
<tr><td align="center">${BBS.no}</td><td><a href="bbsdetail.do?NO=${BBS.no}">${BBS.title}</a></td><td align="center">${BBS.id}</td><td align="center">${BBS.bbsdate}</td></tr>
</c:forEach>
</table>
</div>
</body>
</html>