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
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {
	font-family: "Times New Roman", Times, serif;
	font-size: 36px;
}
.style2 {font-size: 24px}
-->
</style></head>


<body>
<table width="100%" height="17%" border="1" align="center">
    <tr>
      
      <th width="110" height="23"  scope="col">Name</th>
	  <th width="164" scope="col">Question</th>
	 
	  
      <th width="102" scope="col">Date</th>
      <th width="176" scope="col">Approve</th>
	   <th width="175" scope="col">Delete</th>
	   
    </tr>
	<%
		session.setAttribute("aprv","aprv");
   		Connection con1=DBInfo.con;
		String query1="select * from article where approved='0' and rejected='0'";
		PreparedStatement ps1=con1.prepareStatement(query1);
		ResultSet rs=ps1.executeQuery();
		int flag=0;
		while(rs.next())
		{
			flag=1;
			String s1=rs.getString(1);
			String s2=rs.getString(2);
			String s3=rs.getString(3);
			String s4=rs.getString(4);
			String s5=rs.getString(5);
			session.setAttribute("aid",s2);
			
		%>
		<%
			//System.out.print(ToDisplay Name);
				Connection connm=DBInfo.con;
		   		String querynm="select name from registration where email=?";
				PreparedStatement psnm=connm.prepareStatement(querynm);
				psnm.setString(1,s1);
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
		  <td scope="col"><%=s3%></td>
		 
		  <td scope="col"><%=s5%></td>
		  <%
		  if((String)session.getAttribute("utype1")=="Moderator")
		  {
		  %>
		  <td scope="col"><div align="center"><a href=../moderator/ApprovalDone.jsp?AId=<%=s2%>>Approve</a>/<a href=RejectionDone.jsp?AId=<%=s2%>>Reject</a></div></td>
		  <td scope="col"><div align="center"><a href=../user/UDeletionDone.jsp?ArticleId=<%=s2%> onclick="return confirm('Are you sure you want to delete?')">Delete</a></div></td>
		   <%
		   }
		  if((String)session.getAttribute("utype1")=="Admin")
		  {
		  %>
		   <td scope="col"><div align="center"><a href=ApprovalDone.jsp?AId=<%=s2%>>Approve</a>/<a href=RejectionDone.jsp?AId=<%=s2%>>Reject</a></div></td>
		  <td scope="col"><div align="center"><a href=../user/UDeletionDone.jsp?ArticleId=<%=s2%> onclick="return confirm('Are you sure you want to delete?')">Delete</a></div></td>
		  <%
		  }
		  %>
		  
    	</tr>
		<%
		}
		
		if(flag==0)
		response.sendRedirect("CommonToAll.jsp?Norcrds");
		%>
</table>
</body>
</html>
