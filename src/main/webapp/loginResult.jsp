<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
		prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link type="text/css"  rel="styleSheet" href="CSS/css.css"> 
</head>
<body>
<div align="center">
<c:choose>
	<c:when test="${param.R == 'NOID' }">
		<h3 align="center">������ �������� �ʽ��ϴ�.</h3>
	</c:when>
	<c:when test="${param.R == 'NOPWD' }">
		<h3 align="center">��ȣ�� ��ġ���� �ʽ��ϴ�.</h3>
	</c:when>
	<c:otherwise>
		<h3 align="center">�α��� �Ǿ����ϴ�.</h3>
		<h3 align="center">ȯ���մϴ�~ ${param.ID }��~</h3>
		<c:if test="${ ! empty param.CART  }">
			<script type="text/javascript">
				self.close();
				opener.window.location.reload();
			</script>
		</c:if>
	</c:otherwise>
</c:choose>
</div>
</body>
</html>





