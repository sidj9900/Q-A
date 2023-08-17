<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,p2.DBInfo" errorPage="" %>
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
-->
</style></head>

<body>
<Select name="utype">
<%
	String query11="select name from usertype";
	Connection con11= DBInfo.con;
	PreparedStatement ps11=con11.prepareStatement(query11);
	ResultSet res11=ps11.executeQuery();
	while(res11.next())
			{
				
				String s1=res11.getString(1);
				out.println("<option value="+s1+">"+s1+"</option>");
			}
			
%>
</body>
</html>
