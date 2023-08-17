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
.style5 {color: #FF0000; font-size: 14px; }
-->
</style>
</head>

<body>

	  <%
	  	session.setAttribute("ViewPosttry","ViewPosttry");
	  	String gotemail=(String)session.getAttribute("emailid");
		//String aid=(String)request.getParameter("ArticleId");
		String aid=(String)session.getAttribute("AID");
		int like,dislike;
	  	
			
			//String aid=request.getParameter("textfield");
			//System.out.print(aid);
			
			Connection con=DBInfo.con;
			String query="select * from article where articleid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,aid);
			ResultSet res=ps.executeQuery();
			String articleid="",email1="";
			while(res.next())
			{
				email1=res.getString(1);
				articleid=res.getString(2);
				//System.out.println(articleid);
				String subject=res.getString(3);
				String article=res.getString(4);
				String date=res.getString(5);
				like=res.getInt(7);
				dislike=res.getInt(8);
				//session.setAttribute("aid",articleid);
%>
<%
			Connection connm=DBInfo.con;
			String querynm="select name from registration where email=?";
			PreparedStatement psnm=con.prepareStatement(querynm);
			psnm.setString(1,email1);
			ResultSet resnm=psnm.executeQuery();
			String nm="";
			while(resnm.next())
			{
				nm=resnm.getString(1);
			}
%>
	<%
	if((String)session.getAttribute("utype1")=="User")
	{
	%>
	 <form action="Comment.jsp" method="post">
	<%
	}
	if((String)session.getAttribute("utype1")!="User")
	{
	%>
	<form action="../user/Comment.jsp" method="post">
	<%
	}
	%>
	  <table width="100%" height="90%" border="1" cellpadding="10">
        <tr>
          <td width="16%" height="47"><span class="style1">Name:</span><%=nm%></td>
                <input name="textfield" value="<%=articleid%>" type="hidden" size="5" readonly="true" />
          
         
          <td width="79%"><span class="style1">Date:</span><%=date%></td>
        </tr>
		 <tr>
          <td height="37" colspan="4"><span class="style1">Question:</span> <%=subject%></td>
        </tr>
        <tr>
          <td height="29" colspan="1"><div align="left"><span class="style1">Description:</span></div></td>
            <td colspan="3"><textarea name="textarea3" cols="100%" rows="8" readonly="readonly"><%=article%></textarea></td>
        </tr>
		
<%
			//System.out.println(gotemail+":::::::::::::::::"+email1);
			System.out.println((String)session.getAttribute("cmnsrch"));
			if((String)session.getAttribute("cmnsrch")==null)
			{
			System.out.println((String)session.getAttribute("cmnsrch"));
			if(email1.equals(gotemail))
			{
				//System.out.println("in if");
				
			%>
							<tr>
							  <td height="23" colspan="4">
								<div align="center">
								<a href=CommonToAll.jsp?ArticleIdUpdt=<%=articleid%>>Update Post</a>
								&nbsp;&nbsp;<a href=CommonToAll.jsp?ArticleIdDlt=<%=articleid%>>Delete Post</a>								</div>							 							  </td>
							</tr>
							
			<%
		}
		%>
		<%
		if((String)session.getAttribute("utype1")!=null)
		{
		%>
		<tr>
         		<%
				 		if((String)session.getAttribute("utype1")=="User")
						{
				 %>
				 
				  <td height="60" colspan="4">
				<div align="center"><a href=QLike.jsp?ArtiId=<%=articleid%>>Like</a><%=like%> 
				&nbsp;&nbsp;<a href=QDisLike.jsp?ArtiId=<%=articleid%>>Dislike</a><%=dislike%></div></td>	
				  <%
				  }
				  else
				  {
				  %>
		 		 <td width="5%" colspan="4">
								
								<div align="center"><a href=../user/QLike.jsp?ArtiId=<%=articleid%>>Like</a><%=like%> 
								    &nbsp;&nbsp;<a href=../user/QDisLike.jsp?ArtiId=<%=articleid%>>Dislike</a><%=dislike%></div></td>
				  <%
				  }
				  }
				  %>
        </tr>
         			<%
				  }
				  %>
              <%
		   		Connection con2=DBInfo.con;
		   		String query2="select * from comment where articleid=?";
				PreparedStatement ps2=con2.prepareStatement(query2);
				ps2.setString(1,articleid);
				ResultSet res2=ps2.executeQuery();
				//String articleid="";
				while(res2.next())
				{
					String email=res2.getString(1);
					String comment=res2.getString(4);
		  		 %>
						 <%
						Connection connm1=DBInfo.con;
						String querynm1="select name from registration where email=?";
						PreparedStatement psnm1=con.prepareStatement(querynm1);
						psnm1.setString(1,email);
						ResultSet resnm1=psnm1.executeQuery();
						String nm1="";
						while(resnm1.next())
						{
							nm1=resnm1.getString(1);
						}
						%>
		
              <tr>
                <td width="16%" height="22"><div align="left"><span class="style5">Answered by:</span> <%=nm1%></div></td>
                <td width="79%">
                <textarea name="textarea2" cols="100%" rows="6" readonly="readonly"><%=comment%></textarea></td>
              </tr>
       			 <%
				}
	   			 %>
		   
		 <%
		if((String)session.getAttribute("utype1")!=null && (String)session.getAttribute("cmnsrch")==null)
		{
		session.removeAttribute("cmnsrch");
		%>
		    <tr>
                <td width="16%" height="103" class="style1">Answer:</td>
              <td width="79%">
                <textarea name="textarea" cols="100%" rows="6" required></textarea>
                <br>
				<div cols="100%" align="center">
                <input type="submit" name="Submit" value="Submit" />
              </div></td>
        <%
		}
		}
		%>
			</tr>
	  </table>
</form>


   
      <%
if((String)session.getAttribute("utype1")==null)
{
%>
         <div align="center"><a href="Index.jsp">Back</a></div>
      <%
}
%>
      
      
      
      <br>
      <br>
      <br>
      <br>
      
      
    
</body>
</html>
