<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ask Me Anything</title>
<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #FFFF99;
}
-->
a:link {
    color: red;
}

/* visited link */
a:visited {
    color: green;
}

/* mouse over link */
a:hover {
    color: hotpink;
}

/* selected link */
a:active {
    color: blue;
}
</style>
</head>

<body>
<div align="center">

  <table width="100%" height="716" border="1">
    <tr>
      <td height="114" colspan="3"><%@ include file="Header.jsp"%>&nbsp;</td>
    </tr>
    <tr>
      <td width="143" height="499" valign="top"><p class="style4"><a href="Index.jsp?login">Login</a></p>
      <p class="style4"><a href="Index.jsp?reg">SignUp</a></p></td>
	   <%
	  		if(request.getParameter("Srch")==null && request.getParameter("login")!=null)
			{
			%>
	 		 <td width="933" height="339" valign="middle"><div align="center" class="style4"><%@ include file="Login1.jsp"%></div></td>
			<%
			}
	 	%>
		 <%
	  		if(request.getParameter("Srch")==null &&request.getParameter("reg")!=null)
			{
			%>
	 		 <td width="933" height="339" valign="middle"><div align="center" class="style4"><%@ include file="GeneralRegistration.jsp"%></div></td>
			<%
			}
	 	%>
		 <%
	  		if(request.getParameter("Srch")!=null && request.getParameter("reg")==null && request.getParameter("login")==null)
			{
			%>
	 		 <td align="left" valign="top" ><div align="left">
	 		   <%@ include file="user/SearchCommontry.jsp"%>
	 		   </div>
	  <td height="23"></td>
			<%
			}
	 	%>
		<%
			  if(request.getParameter("reg")==null && request.getParameter("login")==null && request.getParameter("Srch")==null && request.getParameter("AID")==null && request.getParameter("norcrds")==null)
			  {
				  session.setAttribute("Home","Home");
				  if(request.getParameter("ArticleId")==null)
				  {
				  %>
				  <td width="909" align="left" valign="top"><%@ include file="ViewTitles.jsp"%></td>
				  <%
				  }
				  else
				  {
				  %>
				   <td width="909" align="left" valign="top"><%@ include file="user/ViewPosttry.jsp"%></td>
				   <%
				   }
			  }
	   	%>
		 <%
	  		String str=request.getParameter("AID");
			
	  		if(str!=null)
			{
			session.setAttribute("AID",str);
			%>
	  			<td width="102" height="339" valign="top"><%@ include file="user/ViewPosttry.jsp"%>&nbsp;</td>
			<%
			}
		
	 	 %>
		 <%
	  		if(request.getParameter("norcrds")!=null)
			{
			%>
	  			<td valign="top">No Record Found...!!</td>
			<%
			}
		
	 	 %>
    </tr>
    <tr>
      <td colspan="3"><%@ include file="Footer.html"%>&nbsp;</td>
    </tr>
</table>
</div>
</body>
</html>
