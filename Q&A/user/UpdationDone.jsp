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
	String postedby=request.getParameter("textfield1");
	String aid=request.getParameter("textfield2");
	String sub=request.getParameter("textarea2");
	String question=request.getParameter("textarea");
	//java.util.Date d=new java.util.Date();
	//Date dNow = new Date( );
   // SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm");
	//System.out.println(sub);System.out.println(question);
	
	Connection con= DBInfo.con;
	//String query="insert into article(email, articleid, subject, article, sub_date) values(?,?,?,?,?)";
	String query="update article set email=?,subject=?,article=? where articleid=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,postedby);
	ps.setString(2,sub);
	ps.setString(3,question);
	ps.setString(4,aid);
	//ps.setString(5,aid);
	int flag=ps.executeUpdate();
	if(flag!=0 && (String)session.getAttribute("utype1")=="User")
	{
			//if(((String)session.getAttribute("id")=="AllPost" || (String)session.getAttribute("id")=="SelfPost"))
			//{
			
				String a=request.getParameter("textfield2");
				System.out.println("::::::::::Qlike1:::::"+a);
				//if((String)session.getAttribute("ViewPosttry")!=null)
				//{
					
					
					response.sendRedirect("CommonToAll.jsp?ViewPostId");
				//}
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
			
				String a=request.getParameter("textfield2");
				System.out.println("::::::::::Qlike1:::::"+a);
				//if((String)session.getAttribute("ViewPosttry")!=null)
				//{
					
					
					response.sendRedirect("../moderator/CommonToAll.jsp?ViewPostId");
				//}
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
			
				String a=request.getParameter("textfield2");
				System.out.println("::::::::::Qlike1:::::"+a);
				//if((String)session.getAttribute("ViewPosttry")!=null)
				//{
					session.setAttribute("ViewPostId",a);
					
					response.sendRedirect("../admin/CommonToAll.jsp?ViewPostId");
				//}
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
			
			/*else
			{
					if((String)session.getAttribute("id")=="SelfPost")
					{	
						session.removeAttribute("id");
						response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
			
					}	
					if((String)session.getAttribute("id")=="AllPost")
					{	
						session.removeAttribute("id");
						response.sendRedirect("../admin/CommonToAll.jsp?ViewAllPost");
			
					}			
			}*/
	}
							
	else
	{
		out.println("Error...!!");
	}

	/*if((String)session.getAttribute("utype1")=="User")
	{

			if(flag!=0 && (String)session.getAttribute("id")=="AllPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("CommonToAll.jsp?ViewAllPost");
			
			}
			if(flag!=0 && (String)session.getAttribute("id")=="SelfPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("CommonToAll.jsp?ViewSelfPost");
			
			}
	}
	if((String)session.getAttribute("utype1")=="Moderator")
	{

			if(flag!=0 && (String)session.getAttribute("id")=="AllPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("../moderator/CommonToAll.jsp?ViewAllPost");
			
			}
			if(flag!=0 && (String)session.getAttribute("id")=="SelfPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("../moderator/CommonToAll.jsp?ViewSelfPost");
			
			}
	}
	if(flag!=0 && (String)session.getAttribute("utype1")=="Admin")
	{

			if((String)session.getAttribute("id")=="AllPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("../admin/CommonToAll.jsp?ViewAllPost");
			
			}
			if((String)session.getAttribute("id")=="SelfPost")
			{	
				session.removeAttribute("id");
				response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
			
			}
			else
			{	
				
				response.sendRedirect("../admin/CommonToAll.jsp?ViewSelfPost");
			
			}
	}
		else
		{
	%>
			<h1><font color=red>Updation Failed....!!</font></h1>
	<%
	}*/
	%>
			</div>
			</body>

</html>
