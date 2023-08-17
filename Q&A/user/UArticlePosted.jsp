<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.Date,p2.DBInfo,java.text.DateFormat,java.text.SimpleDateFormat" errorPage="" %>
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
	String email=(String)session.getAttribute("emailid");
	//String subject=request.getParameter("textfield2");
	String subject=request.getParameter("textarea2");
	String aid=request.getParameter("textfield1");
	String article=request.getParameter("textarea");
	String date=request.getParameter("textfield111");
	Connection con=DBInfo.con;
	String query="insert into article values(?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,email);
	ps.setString(2,aid);
	ps.setString(3,subject);
	ps.setString(4,article);
	ps.setString(5,date);
	if((String)session.getAttribute("utype1")=="User")
	{
		ps.setBoolean(6,false);
	}
	else
	ps.setBoolean(6,true);
	
	ps.setInt(7,0);
	ps.setInt(8,0);
	ps.setBoolean(9,false);
	int flag=ps.executeUpdate();
	if(flag==1)
	{
%>

<body>

	    <div align="center">
	      <p>Question Uploaded!! Question id is:<%=aid%></p>
	      <p>It will be visible on public wall shortly!!  </p>
      </div>
</body>

<%
	}
	else
	{
		out.println("Error...!!");
	}
%>
</html>
