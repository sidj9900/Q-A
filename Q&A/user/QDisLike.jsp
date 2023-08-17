<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.Date,p2.DBInfo" errorPage="" %>
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
		String aid=(String)request.getParameter("ArtiId");
		System.out.println("Qlike:::::::::::::::;"+aid);
			Connection con=DBInfo.con;
			String query="select * from article where articleid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,aid);
			ResultSet res=ps.executeQuery();
			int qdislike=0;
			while(res.next())
			{
				qdislike=res.getInt(8);
				//System.out.println(qlike);
			}
			
			//System.out.println(qdislike);
			
			//-------------------------------------------
			Connection con3=DBInfo.con;
			String query3="select * from qdislike where articleid=?";
			PreparedStatement ps3=con.prepareStatement(query3);
			ps3.setString(1,aid);
			ResultSet res3=ps3.executeQuery();
			String email1="";
			while(res3.next())
			{
				email1=res3.getString(1);
				//System.out.println(qlike);
			}
			//-------------------------------------------
			/*String qdislk=Integer.toString(qdislike);
			session.setAttribute("qdislk",qdislk);
			session.setAttribute("ArtiId",aid);*/
			

	if(!email1.equals(email))
	{
	qdislike+=1;
	Connection con1=DBInfo.con;
	String query1="insert into qdislike(email,articleid) values(?,?)";
	PreparedStatement ps1=con.prepareStatement(query1);
	ps1.setString(1,email);
	ps1.setString(2,aid);
	int flag1=ps1.executeUpdate();
	}
		String qdislk=Integer.toString(qdislike);
		session.setAttribute("qdislk",qdislk);
		session.setAttribute("ArtiId",aid);
		response.sendRedirect("QDisLike1.jsp");
	
%>
</html>
