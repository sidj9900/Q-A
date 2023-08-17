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
.style3 {color: #000000; font-size: 24px; }
-->
</style>
</head>

<body>


	  <%
	  	session.setAttribute("id","AllPost");
	  	String gotemail=(String)session.getAttribute("emailid");
		
		int like,dislike;
	  	if(gotemail!=null)
		{
			Connection conpage=DBInfo.con;
			String querypage="select * from article where approved ='1'";
			PreparedStatement pspage=conpage.prepareStatement(querypage);
			//ps.setString(1,aid);
			ResultSet respage=pspage.executeQuery();
			
			int count=0;
			while(respage.next())
			{
				count+=1;
			}
			//String aid=request.getParameter("textfield");
			System.out.print(count);
			double pagecount1=(count/2.0);
			Double pagecount2=(Math.ceil(pagecount1));
			int pagecount=pagecount2.intValue();
			int off=(int)(((pagecount-1)*2));
			System.out.print(pagecount);
			//String aid=(String)session.getAttribute("aid");
			int k=0;
			
			
			if(request.getParameter("pgid")!=null)
			k=Integer.parseInt(request.getParameter("pgid"))+1;
			
			
			Connection con=DBInfo.con;
			String query="select email,articleid,subject, article, sub_date,approved,qlike,qdislike from article where approved ='1' order by sub_date 			desc limit 2 offset ?";
			PreparedStatement ps=con.prepareStatement(query);
			//ps.setString(1,aid);
			ps.setInt(1,k);
			//k+=1;
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
			//System.out.print(aid);
				Connection connm=DBInfo.con;
		   		String querynm="select name from registration where email=?";
				PreparedStatement psnm=connm.prepareStatement(querynm);
				psnm.setString(1,email1);
				ResultSet resnm=psnm.executeQuery();
				//String articleid="";
				String nm="";
				while(resnm.next())
				{
					nm=resnm.getString(1);
				}
			//System.out.print
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
	  <table width="100%" border="1" cellpadding="10" cellspacing="0">
        <tr>
          <td width="22%"><span class="style1">Name:</span><%=nm%></td>
         
                <input name="textfield" value="<%=articleid%>"type="hidden" size="5" readonly="true" />
          
         
          <td width="22%"><span class="style1">Date:</span><%=date%></td>
        </tr>
		 <tr>
          <td colspan="4"><span class="style1">Question:</span> <%=subject%></td>
        </tr>
        <tr>
          <td width="20%" ><span class="style1">Description:</span> </td>
          <td width="80%"><textarea name="textarea2" cols="100%" rows="8" readonly="readonly"> <%=article%></textarea></td>
        </tr>
<%
			//System.out.println(gotemail+":::::::::::::::::"+email1);
			
			/*if(email1.equals(gotemail))
			{
				//System.out.println("in if");
				
				%>
							<tr>
							  <td colspan="4">
								<div align="center">
								<a href=CommonToAll.jsp?ArticleIdUpdt=<%=articleid%>>Update Post</a>
							  <a href=CommonToAll.jsp?ArticleIdDlt=<%=articleid%>>Delete Post</a>								</div>							  </td>
							</tr>
								
							
							
				<%
				}*/
		%>
				    <td colspan="4"><div align="center"><a href=CommonToAll.jsp?ViewPostId=<%=articleid%>>View</a></div></td>
        </tr>	
		
      		
        
</table>

	 <br>
	      <br>
	    
	    
        <%
		  
	}
%>
	    <%
		if(k==0)
		{
			if(k<pagecount)
			{
			%>
	 			
	  			 <p align="center">
	  		 	 <a href="CommonToAll.jsp?pgid=<%=k+1%>&ViewAllPost" class="style3">Next</a></p>
	 			 <p>
				
	    	<%
			}
		}
		else
		{
			if(k<=pagecount+1)
			{
		%>
				 <p align="center"><a href="CommonToAll.jsp?pgid=<%=(k-3)%>&ViewAllPost" class="style3">Previous</a>
				 <%
				 if(k<pagecount)
				 {
				 %>
	  			&nbsp;<a href="CommonToAll.jsp?pgid=<%=k+1%>&ViewAllPost" class="style3">Next</a></p>
	 			 <%
				 }
				 %>
	    <%
			}
		}
		%>
            </td>
	    
        </div>
        <%
}
else
	{
		response.sendRedirect("../Home.jsp");
	}
%>
            </p>
</body>
</html>
