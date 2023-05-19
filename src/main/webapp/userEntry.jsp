<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>회원 정보 입력</h2>
<form action="entryMember.do" method="post" name="fr"
		onSubmit="return check(this)">
<table id ="blist">
<tr><td align="right">계 정&nbsp;</td><td>&nbsp;<input type="text" name="ID" id="ID"/></td></tr>
<tr><td align="right">연락처&nbsp;</td><td>&nbsp;<input type="text" name="TEL"/></td></tr>
<tr><td align="right">암 호&nbsp;</td><td>&nbsp;<input type="password" name="PWD"/></td></tr>
<tr><td align="right">암호확인&nbsp;</td><td>&nbsp;<input type="password" name="CONF"/></td></tr>
</table><br/>
<input type="submit" value="회원 가입"/>
<input type="reset" value="취 소"/>
</form>
</div>
<script type="text/javascript">
function check(frm){
	if(frm.ID.value == ""){
		alert("계정을 입력하세요."); return false;
	}
	if(frm.TEL.value == ""){
		alert("연락처를 입력하세요."); return false;
	}
	if(frm.PWD.value == ""){
		alert("암호를 입력하세요."); return false;
	}
	if(frm.PWD.value != frm.CONF.value){
		alert("암호가 일치하지 않습니다."); return false;
	}
}
</script>
</body>
</html>









