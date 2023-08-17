
<style>
.btn {
    border: none;
    color: white;
    padding: 14px 26px;
    font-size: 16px;
    cursor: pointer;
}

.info {background-color: #179AC4;} /* Blue */
.info:hover {background: #2E4358;}

.danger {background-color: #f44336;} /* Red */ 
.danger:hover {background: #da190b;}

.default {background-color: #e7e7e7; color: black;} /* Gray */ 
.default:hover {background: #ddd;}

</style>
<table width="100%" height="114" border="0">
  <tr>
  <%
  if((String)session.getAttribute("utype1")==null)
  {
  	%>
    <td width="100%" height="70"><img src="Images/QA.jpg" width="100%" height="150" alt="Q&A" /></td>
	<%
  }
  else
  {
  	%>
  	<td width="100%" height="70"><img src="../Images/QA.jpg" width="100%" height="150" alt="Q&A" /></td>
	<%
  }
  %>
  </tr>
</table>
<div align="center">

<%
if(((String)session.getAttribute("utype1"))!=null)
{
%>
	<form action="CommonToAll.jsp?Srch" method="post">
<%
}
else
{
%>
	<form action="Index.jsp?Srch" method="post">
<%
}
%><br>
  <input name="textfield" type="text" size="30" maxlength="100" required/>
  <input type="submit" name="Submit" value="Search" />
</form>
</div>
