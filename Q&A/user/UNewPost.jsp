<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #FFFF99;
}
.style5 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.style8 {font-size: 18px}
-->
</style>
</head>


<%
	String email1=(String)session.getAttribute("emailid");
	String aid="";
	for(int i=0;i<5;i++)
	{
		aid+=(int)(Math.random()*9)+1;
	}
	//Date d=new Date();
	//-----------------------------------------
	  Date dNow = new Date( );
      SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm");

      //System.out.println("Current Date: " + ft.format(dNow));
	//-----------------------------------------
	if(email1!=null)
	{
%>


<body>
	  <form action="CommonToAll.jsp?ArticlePosted" method="post">
	  <table width="100%" border="1">
        <tr>
          <td colspan="2"><div align="center" class="style5">New Post </div></td>
        </tr>
            <input name="textfield1" type="Hidden" id="textfield1" value="<%=aid%>" size="25" readonly="true" />
			<input name="textfield111" type="Hidden" id="textfield1" value="<%=ft.format(dNow)%>" size="25" readonly="true" />
        <tr>
          <td width="49%"><div align="center" class="style8">Question</div></td>
          <td width="51%"><textarea name="textarea2" cols="100%" rows="3"></textarea></td>
        </tr>
		<tr>        </tr>
        <tr>
          <td valign="middle"><div align="center" class="style8">Description</div></td>
          <td><label>
            <textarea name="textarea" cols="100%" rows="6" required></textarea>
          </label></td>
        </tr>
        
        <tr>
          <td colspan="2">
            <div align="center">
              <input type="submit" name="Submit" value="Submit" />
            </div>          </td>
        </tr>
      </table>
	  </form>
<%
	}
	else
	response.sendRedirect("../Index.jsp");
%>
</body>
</html>
