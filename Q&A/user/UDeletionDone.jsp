<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #00FFFF;
}
-->
</style>
</head>

<%
	String aid="";
	if(request.getParameter("ArticleId")==null)
	aid=request.getParameter("textfield2");
	//System.out.println(sub);System.out.println(question);
	
	else
	aid=request.getParameter("ArticleId");
	
	
	Connection con= DBInfo.con;
	
	String query="Delete from article where articleid=?";
	String query1="Delete from comment where articleid=?";
	String query2="Delete from qlike where articleid=?";
	String query3="Delete from qdislike where articleid=?";
	PreparedStatement ps=con.prepareStatement(query);
	PreparedStatement ps1=con.prepareStatement(query1);
	PreparedStatement ps2=con.prepareStatement(query2);
	PreparedStatement ps3=con.prepareStatement(query3);
	ps.setString(1,aid);
	ps1.setString(1,aid);
	ps2.setString(1,aid);
	ps3.setString(1,aid);
	int flag=ps.executeUpdate();
	int flag1=ps1.executeUpdate();
	int flag2=ps2.executeUpdate();
	int flag3=ps3.executeUpdate();
	
	
	
	
	
	
	
	
	
	
	
	if(flag!=0)
	{
			if((String)session.getAttribute("utype1")=="User")
			{
		
					/*if((String)session.getAttribute("id")=="AllPost")
					{	
						session.removeAttribute("id");
						response.sendRedirect("CommonToAll.jsp?ViewAllPost");
					
					}*/
					//if((String)session.getAttribute("id")=="SelfPost")
					//{	
						//session.removeAttribute("id");
						if(request.getParameter("ArticleId")!=null)
						{	//session.removeAttribute("id");
						response.sendRedirect("CommonToAll.jsp?aprv");
					
						}
						else
						response.sendRedirect("CommonToAll.jsp?ViewSelfPost");
					
					//}
			}
			if((String)session.getAttribute("utype1")=="Moderator")
			{
					if(request.getParameter("ArticleId")!=null)
					{	//session.removeAttribute("id");
						
							session.removeAttribute("aprv");
							response.sendRedirect("../moderator/CommonToAll.jsp?aprv");
						
					
					}
					/*if((String)session.getAttribute("id")=="AllPost")
					{	
						session.removeAttribute("id");
						response.sendRedirect("../moderator/CommonToAll.jsp?ViewAllPost");
					
					}*/
					//if((String)session.getAttribute("id")=="SelfPost")
					//{	
						//session.removeAttribute("id");
						else
						response.sendRedirect("../moderator/CommonToAll.jsp?ViewSelfPost");
					
					//}
			}
			if((String)session.getAttribute("utype1")=="Admin")
			{		
					/*if((String)session.getAttribute("id")=="SelfPost" && (String)session.getAttribute("aprv")==null)
					{	
						session.removeAttribute("id");
						response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
					
					}
					if((String)session.getAttribute("aprv")!=null)
					{	
						session.removeAttribute("aprv");
						response.sendRedirect("../admin/CommonToAll.jsp?aprv");
					
					}*/
		
					//if((String)session.getAttribute("id")=="AllPost")
					//{	//response.sendRedirect("../admin/CommonToAll.jsp?ViewAllPost");
						//session.removeAttribute("id");
						if(request.getParameter("ArticleId")!=null)
						{	//session.removeAttribute("id");
						response.sendRedirect("../admin/CommonToAll.jsp?aprv");
					
						}
						else
						response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
					
					//}
					
			}
		}
%>
	

</html>
