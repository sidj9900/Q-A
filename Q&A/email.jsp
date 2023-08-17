<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<form action="../servlet/SendMail" method="post">
  <div align="center">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  <table width="499" border="1" align="center">
  <tr>
    <th colspan="2" scope="col"><em><strong>Contact To Moderator </strong> </em></th>
  </tr>
  <%
  String emailusr=(String)session.getAttribute("emailid");
  System.out.print("==========================email::"+emailusr);
  if((String)session.getAttribute("utype1")=="User")
  {
  %>
  <input name="emailuser" type="hidden" value=<%=emailusr%> width="500" />
  
    <input name="to" type="hidden" id="to" value="ssssidjain@gmail.com" width="500" />
  
  <%
  }
  else
  {
  %>
  <tr>
    <td width="17">To</td>
    <td width="466"><input name="to" type="text" id="to" width="500" /></td>
  </tr>
  <%
  }
  %>
  <tr>
    <td>subject</td>
    <td><input name="subject" type="text" id="subject" width="500"/></td>
  </tr>
  <tr>
    <td>msg
      <div align="center"></div></td>
    <td><textarea name="msg" id="msg" rows="7" cols="120"></textarea></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Submit" value="Submit"  />
    </div></td>
  </tr>
</table>
</form>
</body>
</html>
