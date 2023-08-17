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
<%@ page import="java.sql.*"%>
  <%@ page import="p2.DBInfo"%>
<body>
<div align="center">
 
	  
	  
	  <table width="100%" height="100%" border="1" align="center">
    <tr>
      <th width="15%" scope="col">Name</th>
      <th width="15%" scope="col">Email Id</th>
      
	  <th width="23%" scope="col">Question</th>
	  
	  
      <th width="19%" scope="col">Date</th>
	  <th scope="col" colspan="1">View</th>
    </tr>
	<%
		
		String email=request.getParameter("textfield");
   		Connection con=DBInfo.con;
		String query="select * from article where email like '%"+email+"%' or articleid like '%"+email+"%' or subject like '%"+email+"%' or article like '%"+email+"%'";
		PreparedStatement ps=con.prepareStatement(query);
		//ps.setString(1,email);
		//ps.setString(2,email);
		//ps.setString(3,email);
		//ps.setString(4,email);
		ResultSet rs=ps.executeQuery();
		int flag=0;
		while(rs.next())
		{	flag=1;
			String email1=rs.getString(1);
			String aid=rs.getString(2);
			String sub=rs.getString(3);
			String date=rs.getString(5);
		%>
		<%
			//System.out.print(ToDisplay Name);
				Connection connm=DBInfo.con;
		   		String querynm="select name from registration where email=?";
				PreparedStatement psnm=connm.prepareStatement(querynm);
				psnm.setString(1,email1);
				ResultSet resnm=psnm.executeQuery();
				
				String nm="";
				while(resnm.next())
				{
					nm=resnm.getString(1);
				}
			//System.out.print(ToDisplay Name);
          	%>
		<tr>
			<td scope="col"><%=nm%></td>
		   <td scope="col"><%=email1%></td>
		  <td scope="col"><%=sub%></td>
		  <td scope="col"><%=date%></td>
		  <%
		  session.setAttribute("cmnsrch","cmnsrch");
		  if(((String)session.getAttribute("utype1"))==null)
		  {
		  %>
		  		<td width="21%" scope="col"><div align="center"><a href=Index.jsp?AID=<%=aid%>>View Post</a> </div></td>
		  <%
		  }
		   else
		  {
		  %>
		  		<td width="21%" scope="col"><div align="center"><a href=CommonToAll.jsp?AID=<%=aid%>>View Post</a> </div></td>
		   <%
		   }
		   %>
		
    	</tr>
		<%
		}
		%>
		<%
		  if(flag==0)
		  {
		  		if((String)session.getAttribute("utype1")==null)
		  		response.sendRedirect("Index.jsp?norcrds");
				
				else
				response.sendRedirect("CommonToAll.jsp?norcrds");
		
		  }
		  %>
		
</table>
</body>
</html>
