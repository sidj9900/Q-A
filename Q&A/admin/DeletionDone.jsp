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
	String email=request.getParameter("email");
	Connection con= DBInfo.con;
	
	String query="Delete from registration where email=?";
	String query1="Delete from login where email=?";
	
	PreparedStatement ps=con.prepareStatement(query);
	PreparedStatement ps1=con.prepareStatement(query1);
	
	ps.setString(1,email);
	ps1.setString(1,email);
	
	int flag=ps.executeUpdate();
	int flag1=ps1.executeUpdate();
	response.sendRedirect("CommonToAll.jsp?mngacc");
%>
	

</html>
