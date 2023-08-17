<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%@ page import="java.sql.*,p2.DBInfo"%>
<%
	String email=request.getParameter("textfield");
	String pass=request.getParameter("textfield1");
	session.setAttribute("emailid",email);
	Connection con=DBInfo.con;
	String query="select * from login where email=? and password=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,email);
	ps.setString(2,pass);
	ResultSet res=ps.executeQuery();
	int flag=0;
	String utype="";
	while(res.next())
	{
		flag=1;
		utype=res.getString("usertype");
		break;
	}
	
	
	if(flag==1 && utype.equalsIgnoreCase("admin"))
	{
		session.setAttribute("utype1","Admin");
		response.sendRedirect("admin/CommonToAll.jsp?Admin");
	}
	if(flag==1 && utype.equalsIgnoreCase("user"))
	{
		session.setAttribute("utype1","User");
		response.sendRedirect("user/CommonToAll.jsp?User");
	}
	if(flag==1 && utype.equalsIgnoreCase("moderator"))
	{
		session.setAttribute("utype1","Moderator");
		response.sendRedirect("moderator/CommonToAll.jsp?Moderator");
	}
	if(flag==0)
	{		
		response.sendRedirect("Index.jsp?login");
	}
%>
</body>
</html>
