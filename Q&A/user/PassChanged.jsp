<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #FFFFFF;
}
-->
</style>
</head>

<%
	
	String email=request.getParameter("textfield1");
	String oldpass=request.getParameter("textfield2");
	String newpass=request.getParameter("textfield3");
	//System.out.println(sub);System.out.println(question);
	
	Connection con= DBInfo.con;
	String query="update login set password=? where email=? and password=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,newpass);
	ps.setString(2,email);
	ps.setString(3,oldpass);
	int flag=ps.executeUpdate();
	
		if(flag!=0)
		{
			session.invalidate();
			response.sendRedirect("../Index.jsp?login");
		}
		
		else
		{
			System.out.println("Fail");
			if((String)session.getAttribute("utype1")=="User")
			{
			response.sendRedirect("CommonToAll.jsp?ChangePass");
			}
			if((String)session.getAttribute("utype1")=="Moderator")
			{
			response.sendRedirect("../moderator/CommonToAll.jsp?ChangePass");
			}
			if((String)session.getAttribute("utype1")=="Admin")
			{
			response.sendRedirect("../admin/CommonToAll.jsp?ChangePass");
			}
		}
	%>
			</div>
			</body>

</html>
