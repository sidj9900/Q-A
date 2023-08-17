<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #FFFF99;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {
	font-family: "Times New Roman", Times, serif;
	font-size: 36px;
}
-->
</style></head>


<body>
<%@ page import="java.sql.*"%>
  <%@ page import="p2.DBInfo"%>
  <table width="100%" height="69" border="1" align="center">
    <tr>
      
      <th width="11%" height="23" scope="col">ID</th>
      <th width="16%" scope="col">Name</th>
	  <th width="23%" scope="col">Mobile</th>
	  <th width="25%" scope="col">Email</th>
	  
     
      <th width="25%" scope="col">Delete</th>
    </tr>
	<%
   		Connection con=DBInfo.con;
		String query="select * from registration";
		PreparedStatement ps=con.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		int flag=0;
		rs.next();
		while(rs.next())
		{
			flag=1;
			String s1=rs.getString(1);
			String s2=rs.getString(2);
			String s3=rs.getString(3);
			String s4=rs.getString(4);
		%>
		<tr>
		  <td height="10" scope="col"><div align="center"><%=s1%></div></td>
		  <td scope="col"><div align="center"><%=s2%></div></td>
		  <td scope="col"><div align="center"><%=s3%></div></td>
		  <td scope="col"><div align="center"><%=s4%></div></td>
		 
		  <td scope="col"><div align="center"><a href=DeletionDone.jsp?email=<%=s4%> onclick="return confirm('Are you sure you want to delete?')">Delete</a></div></td>
    	</tr>
		<%
		}
		if(flag==0)
		response.sendRedirect("CommonToAll.jsp?Norcrds");
		%>
</table>
</body>
</html>
