<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<a href="Index.jsp">Go to Home page</a>
<form action="Login.jsp" method="post">
	  <div align="center">
	    <table width="40%" border="1" cellpadding="4">
        <tr>
          <td colspan="2"><div align="center">Login Now </div></td>
          </tr>
        <tr>
          <td width="50%"><div align="center" >Email</div></td>
          <td width="50%">
            <input type="email" name="textfield" required/>		</td>
        </tr>
        <tr>
          <td><div align="center">Password </div></td>
          <td width="50%">
            <input type="password" name="textfield1" required/>		</td>
        </tr>
        <tr>
          <td colspan="2"><div align="center">
            <label>
            <input type="submit" name="Submit" value="Submit" />
			
            </label>
          </div></td>
          </tr>
        <tr>
          <td colspan="2"><div align="center">New User? <a href="Index.jsp?reg">Sign Up </a></div></td>
          </tr>
      </table>
	  </div>
</form>
</body>
</html>
