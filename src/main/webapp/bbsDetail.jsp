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
	<h3>존재하지 않는 게시글입니다.</h3>
</c:if>
<c:if test="${ ! empty BBS }">
	<h3>게시글 상세보기</h3>
	<table width="100%">
		<tr><th>글번호</th><td>${BBS.no }</td></tr>
		<tr><th>작성자</th><td>${BBS.id }</td></tr>
		<tr><th>제 목</th><td><input type="text" value="${BBS.title }" name ="TITLE" /></td></tr>
		<tr><th>작성일</th><td>${BBS.bbsdate }</td></tr>
		<tr><th>내 용</th><td><textarea rows="5" cols="40" name ="CONTENT">${BBS.content }</textarea></td></tr>			
		<tr><td colspan="2" align="right"><c:if test="${sessionScope.MANAGER != null || sessionScope.USERID != null}">						
		<input type="submit" value="수정" name="BTN">    <input type="submit" value="삭제" name="BTN"></c:if></td>
		</tr>	
	</table>
</c:if>
</div>
</form>
</body>
</html>








