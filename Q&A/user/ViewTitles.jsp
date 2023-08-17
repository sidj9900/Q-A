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
.style1 {color: #FF0000}
-->
</style>
</head>

<body>
		<h3 align="center">Trending Questions</h3>

	  <%	session.setAttribute("User","User");
			Connection con=DBInfo.con;
			String query="select subject,articleid,sub_date from article where approved ='1' order by QLike desc limit 10";
			PreparedStatement ps=con.prepareStatement(query);
			//ps.setString(1,aid);
			ResultSet res=ps.executeQuery();
			String articleid="",email1="";
			while(res.next())
			{
				
				String subject=res.getString(1);
				articleid=res.getString(2);
				String date=res.getString(3);
				//session.setAttribute("aid",articleid);
%>
	
	<form action="user/Comment.jsp" method="post">
	  <table width="100%" height="100%" border="1" cellpadding="10">
		 <tr>
          <td height="37" colspan="4"><%=subject%><a href=CommonToAll.jsp?AID=<%=articleid%>>View</a></td>
        </tr>    
      </table>
  
	</form>
		  <%
	}
%>
    </td>
   
</div>
</body>
</html>
