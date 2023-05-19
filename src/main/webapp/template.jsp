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
<body onload="startClock()">
<script src="Clock/clock.js"></script>
<header>
 <h2 align="center"><a href="template.jsp"><img alt="" src="imsilogo.png" id="main_image"></a></h2>
</header>
<section>
	<table id="body">
		<tr>
			<td class="main">
				<div id="login">
					<c:choose>
						<c:when test="${sessionScope.USERID == null &&
							sessionScope.MANAGER == null }">
							<jsp:include page="login.jsp"/>
						</c:when>
						<c:otherwise>
							<jsp:include page="logout.jsp"/>
						</c:otherwise>
					</c:choose>
				</div>
				<div id="menu">
					<a href="template.jsp?BODY=intro.jsp">�� �Ұ�</a><br/>
					<c:if test="${sessionScope.MANAGER != null || sessionScope.USERID != null}">
					<a href="template.jsp?BODY=bbsInput.jsp">�� �Խñ� �ۼ�</a><br/>
					</c:if>
					<a href="bbsList.do">�� �Խñ� ���</a><br/>
				</div>
			</td>
			<td id="content">
				<jsp:include page="${param.BODY }"/>
			</td>
		</tr>
	</table>
</section>
<footer>
	<h3 align="center">CopyRight 2022. MyHome. <span id="clock"></span></h3>
</footer>
</body>
</html>








