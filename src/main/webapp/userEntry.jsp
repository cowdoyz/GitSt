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
<h2>ȸ�� ���� �Է�</h2>
<form action="entryMember.do" method="post" name="fr"
		onSubmit="return check(this)">
<table id ="blist">
<tr><td align="right">�� ��&nbsp;</td><td>&nbsp;<input type="text" name="ID" id="ID"/></td></tr>
<tr><td align="right">����ó&nbsp;</td><td>&nbsp;<input type="text" name="TEL"/></td></tr>
<tr><td align="right">�� ȣ&nbsp;</td><td>&nbsp;<input type="password" name="PWD"/></td></tr>
<tr><td align="right">��ȣȮ��&nbsp;</td><td>&nbsp;<input type="password" name="CONF"/></td></tr>
</table><br/>
<input type="submit" value="ȸ�� ����"/>
<input type="reset" value="�� ��"/>
</form>
</div>
<script type="text/javascript">
function check(frm){
	if(frm.ID.value == ""){
		alert("������ �Է��ϼ���."); return false;
	}
	if(frm.TEL.value == ""){
		alert("����ó�� �Է��ϼ���."); return false;
	}
	if(frm.PWD.value == ""){
		alert("��ȣ�� �Է��ϼ���."); return false;
	}
	if(frm.PWD.value != frm.CONF.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�."); return false;
	}
}
</script>
</body>
</html>









