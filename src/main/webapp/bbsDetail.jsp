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
<form action="bbsdelete.do?N=${BBS.no }" method="post">
<div align="center">
<c:if test="${empty BBS }">
	<h3>�������� �ʴ� �Խñ��Դϴ�.</h3>
</c:if>
<c:if test="${ ! empty BBS }">
	<h3>�Խñ� �󼼺���</h3>
	<table width="100%">
		<tr><th>�۹�ȣ</th><td>${BBS.no }</td></tr>
		<tr><th>�ۼ���</th><td>${BBS.id }</td></tr>
		<tr><th>�� ��</th><td><input type="text" value="${BBS.title }" name ="TITLE" /></td></tr>
		<tr><th>�ۼ���</th><td>${BBS.bbsdate }</td></tr>
		<tr><th>�� ��</th><td><textarea rows="5"  
			cols="40" name ="CONTENT">${BBS.content }</textarea></td></tr>
		<tr><td colspan="2" align="right"><input type="submit" value="����" name="BTN">    <input type="submit" value="����" name="BTN"></tr>	
	</table>
</c:if>
</div>
</form>
</body>
</html>








