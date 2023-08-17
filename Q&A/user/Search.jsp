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
</head>

<body>
<form action="PassChanged.jsp" method="post">
<table width="353" border="1">
  <tr>
    <td colspan="2"><div align="center">Change Password </div></td>
  </tr>
  
  <tr>
    <td width="149" height="46"><div align="center">Email Id</div></td>
    <td width="188"><label>
    <input name="textfield1" value="<%=session.getAttribute("emailid")%>"type="text" id="textfield1" readonly="true"/>
    </label></td>
  </tr>
  
  <tr>
    <td width="149" height="46"><div align="center">Old Password </div></td>
    <td width="188"><label>
    <input name="textfield2" type="password" id="textfield1"/>
    </label></td>
  </tr>
  <tr>
    <td width="149" height="46"><div align="center">New Password </div></td>
    <td width="188"><label>
    <input name="textfield3" type="password" id="textfield3"/>
    </label></td>
  </tr>
  <tr>
    <td width="149" height="46"><div align="center">Retype New Password </div></td>
    <td width="188"><label>
    <input name="textfield4" type="password" id="textfield3"/>
    </label></td>
  </tr>
  
  <tr>
    <td height="84" colspan="2">
      <div align="center">
		
        <label>
        <input type="submit" name="Submit" value="Submit" />
        </label>
        <hr>
        <input type="reset" name="Submit2" value="Reset" />
      </div>
      <div align="center"></div>    </td>
  </tr>
</table>

</form>
</body>
</html>
