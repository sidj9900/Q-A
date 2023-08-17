<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.Date,p2.DBInfo" errorPage="" %>
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
.style1 {color: #FF0000}
-->
</style>
</head>


<%
	
	Connection con1=DBInfo.con;
	String query1="insert into comment(email, articleid,commentid, comment, date) values(?,?,?,?,?)";
	PreparedStatement ps1=con1.prepareStatement(query1);
	String email1=(String)session.getAttribute("emailid");
	//String aid=(String)session.getAttribute("aid");
	String aid=request.getParameter("textfield");
	System.out.println(aid);	
	String comment=request.getParameter("textarea");
	Date d=new Date();
	
	String commentid=email1.substring(0,3);
	String id="";
	for(int i=0;i<5;i++)
	{
		id+=((int)(Math.random()*9)+1);
	}
	commentid+=id;
	//System.out.println(email1+"::"+aid+"::"+commentid);
	ps1.setString(1,email1);
	ps1.setString(2,aid);
	ps1.setString(3,commentid);
	ps1.setString(4,comment);
	ps1.setString(5,String.valueOf(d));
	int flag=ps1.executeUpdate();
	
	if(flag!=0 && (String)session.getAttribute("utype1")=="User")
	{
			//if(((String)session.getAttribute("id")=="AllPost" || (String)session.getAttribute("id")=="SelfPost"))
			//{
			
				String a=(String)session.getAttribute("ArtiId");
				System.out.println("::::::::::Qlike1:::::"+a);
				if((String)session.getAttribute("ViewPosttry")!=null)
				{
					
					
					response.sendRedirect("CommonToAll.jsp?ViewPostId");
				}
			//}
			
	}
	if(flag!=0 && (String)session.getAttribute("utype1")=="Moderator")
	{
			//if(((String)session.getAttribute("id")=="AllPost" || (String)session.getAttribute("id")=="SelfPost"))
			//{
			
				String a=(String)session.getAttribute("ArtiId");
				System.out.println("::::::::::Qlike1:::::"+a);
				if((String)session.getAttribute("ViewPosttry")!=null)
				{
					
					
					response.sendRedirect("../moderator/CommonToAll.jsp?ViewPostId");
				}
			//}
			
	}
	if(flag!=0 && (String)session.getAttribute("utype1")=="Admin")
	{

			//if(((String)session.getAttribute("id")=="AllPost" || (String)session.getAttribute("id")=="SelfPost"))
			//{
			
				String a=(String)session.getAttribute("ArtiId");
				System.out.println("::::::::::Qlike1:::::"+a);
				if((String)session.getAttribute("ViewPosttry")!=null)
				{
					session.setAttribute("ViewPostIdQLike1",a);
					
					response.sendRedirect("../admin/CommonToAll.jsp?ViewPostId");
				}
			//}
	}
	//---------------------
	/*if(i!=0)
	{
			if((String)session.getAttribute("id")!="SelfPost" && (String)session.getAttribute("id")!="AllPost")
			{
			response.sendRedirect("CommonToAll.jsp?User");
			}
			if((String)session.getAttribute("id")=="AllPost")
			{	
				session.removeAttribute("id");
				if((String)session.getAttribute("utype1")=="User")
				response.sendRedirect("CommonToAll.jsp?ViewAllPost");
				if((String)session.getAttribute("utype1")=="Admin")
				response.sendRedirect("../admin/CommonToAll.jsp?ViewAllPost");
				if((String)session.getAttribute("utype1")=="Moderator")
				response.sendRedirect("../moderator/CommonToAll.jsp?ViewAllPost");
			
			}
			if((String)session.getAttribute("id")=="SelfPost")
			{	
				session.removeAttribute("id");
				if((String)session.getAttribute("utype1")=="User")
				response.sendRedirect("CommonToAll.jsp?ViewSelfPost");
				if((String)session.getAttribute("utype1")=="Admin")
				response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
				if((String)session.getAttribute("utype1")=="Moderator")
				response.sendRedirect("../moderator/CommonToAll.jsp?ViewSelfPost");
			
			}
			
			/*String str11=(String)session.getAttribute("ViewPostId");
			if(str11!=null)
			{	
			%>
			<input name="ViewPostId" id="ViewPostId" type="hidden">
			<%
				if((String)session.getAttribute("utype1")=="User")
				{
				response.sendRedirect("CommonToAll.jsp?ViewPostId");
				}
			}*/
	//}
	//-----------------------
%>

</html>
