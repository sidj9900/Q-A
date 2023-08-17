<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>User Section-Ask Me Anything</title>
<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #FFFFCC;
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
<%
if((String)session.getAttribute("utype1")!=null)
{
%>
<div align="center">
  <table width="100%" height="100%" border="1">
    <tr>
      <td height="52" colspan="3"><%@ include file="../Header.jsp"%>&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" height="100%" valign="top"><%@ include file="sideMenu.html"%>&nbsp;</td>
	  	<%
	  	
			if(request.getParameter("User")!=null)
			{
			%>
	  <td width="160" height="100%" valign="top"><%@ include file="ViewTitles.jsp"%>&nbsp;</td>
			<%
			}
	  		%>
			<%
	  		if(request.getParameter("NewPost")!=null)
			{
			%>
	  <td width="92" height="100%" valign="top"><%@ include file="UNewPost.jsp"%>&nbsp;</td>
			<%
			}
	  		
	  		if(request.getParameter("ViewAllPost")!=null)
			{
			request.getParameter("pgid");
			%>
			<input type="hidden" id="pgid" name="pgid"/>
	  <td width="92" height="100%" valign="top"><%@ include file="UViewAllPost.jsp"%>&nbsp;</td>
			<%
			}
	 		 %>
	  
	 		 <%
	  		if(request.getParameter("ArticlePosted")!=null)
			{
			%>
	  <td width="92" height="100%" valign="top"><%@ include file="UArticlePosted.jsp"%>&nbsp;</td>
			<%
			}
	 		 %>
	  
	  
	  
	 		 <%
	  		if(request.getParameter("ArticleIdUpdt")!=null)
			{	
			%>
				
	 		 <td width="92" height="100%" valign="top"><%@ include file="SearchDoneForUpdation.jsp"%>&nbsp;
	  <input type="hidden" name="textfield" value="request.getParameter("ArticleIdUpdt")" /></td>
			<%
				}
				
	  		%>
	  
	   		<%
	  		if(request.getParameter("ArticleIdDlt")!=null)
			{
			%>
	  <td width="92" height="100%" valign="top"><%@ include file="SearchDoneForDeletiontry.jsp"%>&nbsp;</td>
			<%
			}
	 		 %>

	  		<%
	  		if(request.getParameter("ViewSelfPost")!=null)
			{
			request.getParameter("pgid");
			%>
			<input type="hidden" id="pgid" name="pgid"/>
	  <td width="92" height="100%" valign="top"><%@ include file="UViewSelfPost.jsp"%>&nbsp;</td>
			<%
			}
	  		%>
	  
	  		 <%
	  		if(request.getParameter("ChangePass")!=null)
			{
			%>
	  <td width="92" height="100%" valign="top"><%@ include file="PassChange.jsp"%>&nbsp;</td>
			<%
			}
	 		 %>
	 		 <%
	  		if(request.getParameter("Srch")!=null)
			{
			session.setAttribute("Srch","Srch");
			%>
	  <td width="92" height="100%" valign="top"><%@ include file="SearchCommontry.jsp"%>&nbsp;</td>
			<%
			}
	 		 %>
	 		 <%
	  		String str=request.getParameter("AID");
			
	  		if(str!=null)
			{
			session.setAttribute("AID",str);
			%>
	  <td width="102" height="100%" valign="top"><%@ include file="ViewPosttry.jsp"%>&nbsp;</td>
			<%
			}
		
	  %>
      <%
	  		if(request.getParameter("sendmail")!=null)
			{
			
			//System.out.println(emailuser);
			%>
			
	  <td width="92" height="100%" valign="top"><%@ include file="../email.jsp"%>&nbsp;</td>
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
		 <%
	  		if(request.getParameter("emailSent")!=null)
			{
			%>
	  <td width="92" height="100%" valign="top">Email Sent Successfully....!!</td>
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
		 <%
	  		if(request.getParameter("ViewPostId")!=null)
			{
			String str1;
			if((String)session.getAttribute("id")!=null)
			{
			session.removeAttribute("id");
			str1=request.getParameter("ViewPostId");
			}
			else
			{
			str1=(String)session.getAttribute("ViewPostId");
			}
			session.setAttribute("ViewPostId",str1);
			
			//String a=(String)session.getAttribute("ViewPostIdQLike1");
			//System.out.println("CTA"+a);
			if(str1!=null)
			{
			
			session.setAttribute("AID",str1);
			//session.removeAttribute("ViewPostIdQLike1");
			}
			//else
			//session.setAttribute("AID",a);
			session.removeAttribute("cmnsrch");
			%>
			  <td width="92" height="100%" valign="top"><%@ include file="ViewPosttry.jsp"%>&nbsp;</td>
			<%
			
			}
	 		 %>
    </tr>
    <tr>
      <td colspan="3"><%@ include file="../Footer.html"%>&nbsp;</td>
    </tr>
  </table>
</div>
<%
}
else
{
response.sendRedirect("../Index.jsp?login");
}
%>
</body>
</html>
