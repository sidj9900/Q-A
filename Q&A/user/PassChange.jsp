<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<style type="text/css">
<!--
body {
	background-color: #FFFF99;
}
-->
</style></head>

<body>
<%
if((String)session.getAttribute("utype1")=="User")
{
%>
<form action="PassChanged.jsp" method="post">
<%
}
else
{
%>
<form action="../user/PassChanged.jsp" method="post">
<%
}
%>
<center><table width="60%" height="100%" border="1" cellpadding="10">
  <tr>
    <td colspan="2"><div align="center">Change Password </div></td>
  </tr>
  
  <tr>
    <td width="149" height="46"><div align="center">Email Id</div></td>
    <td width="188"><label>
    <input name="textfield1"type="text" id="textfield1" value="<%=session.getAttribute("emailid")%>" size="30" readonly="true"/>
    </label></td>
  </tr>
  
  <tr>
    <td width="149" height="46"><div align="center">Old Password </div></td>
    <td width="188"><label>
    <input name="textfield2" type="password" id="textfield1" required/>
    </label></td>
  </tr>
  <tr>
    <td width="149" height="46"><div align="center">New Password</div></td>
    <td width="188"><label>
    <input name="textfield3" type="password" id="textfield3" required/>
    </label></td>
  </tr>
  <tr>
    <td width="149" height="46"><div align="center">Retype New Password </div></td>
    <td width="188"><label>
    <input name="textfield4" type="password" id="textfield4" onkeyup="func()" required/>
    </label>
	<div id="textfield111" > </div></td>
  </tr>
  
  
  <tr>
    <td height="56" colspan="2">
      <div align="center">
        <input type="submit" name="Submit" value="Submit" />
      </div>
      </td>
  </tr>
</table></center>

</form>
<script type="text/javascript">
var pas=document.getElementById('textfield3');

function func(){
var x=pas.value;
var y=document.getElementById('textfield4');
var y1=y.value;
if(!x.startsWith(y1)){
document.getElementById('textfield111').innerHTML='<h5 style:"color="red"; ">password not matched </h5>';
}else if(x.startsWith(y1)){
document.getElementById('textfield111').innerHTML='';
}
}
</script>
</body>
</html>
