<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.Date,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #FFFF99;
}
-->
</style>
</head>


<%
	  	
			
			
			
							String qlk1=(String)session.getAttribute("qlk");
							String aid2=(String)session.getAttribute("ArtiId");
							System.out.println(aid2+":::::::::::::::::::::::::::"+qlk1);
							Connection con2= DBInfo.con;
							String query2="update article set QLike=? where articleid=?";
							PreparedStatement ps2=con2.prepareStatement(query2);
							ps2.setString(1,qlk1);
							ps2.setString(2,aid2);
							int flag=ps2.executeUpdate();
	if(flag!=0 && (String)session.getAttribute("utype1")=="User")
	{
			//if(((String)session.getAttribute("id")=="AllPost" || (String)session.getAttribute("id")=="SelfPost"))
			//{
			
				String a=(String)session.getAttribute("ArtiId");
				System.out.println("::::::::::Qlike1:::::"+a);
				if((String)session.getAttribute("ViewPosttry")!=null)
				{
					//session.setAttribute("ViewPostIdQLike1",a);
					session.setAttribute("ViewPostId",a);
					response.sendRedirect("CommonToAll.jsp?ViewPostId");
				}
			//}
			/*if(flag!=0 && (String)session.getAttribute("id")=="AllPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("CommonToAll.jsp?ViewAllPost");
			
			}
			if(flag!=0 && (String)session.getAttribute("id")=="SelfPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("CommonToAll.jsp?ViewSelfPost");
			
			}*/
			
	}
	if(flag!=0 && (String)session.getAttribute("utype1")=="Moderator")
	{
			//if(((String)session.getAttribute("id")=="AllPost" || (String)session.getAttribute("id")=="SelfPost"))
			//{
			
				String a=(String)session.getAttribute("ArtiId");
				System.out.println("::::::::::Qlike1:::::"+a);
				if((String)session.getAttribute("ViewPosttry")!=null)
				{
					session.setAttribute("ViewPostIdQLike1",a);
					
					response.sendRedirect("../moderator/CommonToAll.jsp?ViewPostId");
				}
			//}
			/*if(flag!=0 && (String)session.getAttribute("id")=="AllPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("../moderator/CommonToAll.jsp?ViewAllPost");
			
			}
			if(flag!=0 && (String)session.getAttribute("id")=="SelfPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("../moderator/CommonToAll.jsp?ViewSelfPost");
			
			}*/
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
				/*if((String)session.getAttribute("id")=="AllPost")
				{	
					session.removeAttribute("id");
					response.sendRedirect("../admin/CommonToAll.jsp?ViewAllPost");
				
				}
				if((String)session.getAttribute("id")=="SelfPost")
				{	
					session.removeAttribute("id");
					response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
				
				}*/
			
			
	}
							else
							{
								out.println("Error...!!");
							}
			

	
%>
</html>
