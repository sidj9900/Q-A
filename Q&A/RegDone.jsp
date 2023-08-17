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
	background-color: #FFFF99;
}
-->
</style>
</head>

<%
	String name=request.getParameter("textfield1");
	String mobile=request.getParameter("textfield3");
	String email=request.getParameter("textfield4");
	//String username=request.getParameter("textfield5");
	String password=request.getParameter("textfield6");
	String repass=request.getParameter("textfield7");
	String usertype="";
	if(session.getAttribute("utype1")!=null)
		usertype=(String)request.getParameter("utype");
		else
		usertype=request.getParameter("textfield8");
	Connection con= DBInfo.con;
	String query="insert into registration values(?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,"0");
	ps.setString(2,name);
	ps.setString(3,mobile);
	ps.setString(4,email);
	
	int flag=ps.executeUpdate();
	String query1="insert into login values(?,?,?)";
	ps=con.prepareStatement(query1);
	ps.setString(1,email);
	//ps.setString(2,username);
	ps.setString(2,password);
	ps.setString(3,usertype);
	int flag1=ps.executeUpdate();
	if(flag!=0)
	{	
		if((String)session.getAttribute("utype1")==null)
		{
		response.sendRedirect("Index.jsp?login");
		}
		if((String)session.getAttribute("utype1")=="Moderator")
		{
		response.sendRedirect("moderator/CommonToAll.jsp?NewAcc");
		}
		if((String)session.getAttribute("utype1")=="Admin")
		{
		response.sendRedirect("admin/CommonToAll.jsp?AccCreated");
		}
		}
		else
		{
	%>
			<h1><font color=red>Registration Failed....!!</font></h1>
			
	<%
	}
	%>
	

</html>
