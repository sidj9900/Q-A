<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 36px}
-->
</style>
<script src="https://smtpjs.com/v2/smtp.js">
</script>

</head>

<body>
<div align="center">Message to Admin </div>
<label>
<form id="form1" name="form1" method="post" action="">
  <label>
  <div align="center" class="note">
    <input type="text" name="textfield" />
  </div>
  </label>
</form>
<div align="center" class="note" contenteditable="true" onkeyup="saveNote(this.id)">
  <textarea name="textarea" cols="30" rows="10"></textarea>
</div>
</label>
<label>
<div align="center">
  <input type="submit" name="Submit" value="Submit" contenteditable="true" onkeyup="saveNote(this.id)" />
</div>
</label>

<script>
function getNote(){
if(localStorage.getItem("note"))
{
var note=localStorage.getItem("note");
}
else{
document.getElementsByClassName("note").innerHTML='not found';
}
document.getElementsByClassName("note").innerHTML=note;
}
function saveNote(id){
var note=document.getElementsByClassName("note").innerHTML;
localStorage.setItem("note",note);
}

</script>
<script>
getNote();
</script>
</body>
</html>
