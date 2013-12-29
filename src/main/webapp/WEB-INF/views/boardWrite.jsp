<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.regex.Pattern"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBOSS TEST</title>
</head>
<body>

<form action = "insert.do" method="post" onsubmit="return formCheck();">
Title : <input type = "text" name = "title" /><br/>
Writer : <input type = "text" name = "writer" /><br/>
Content : <input type = "text" name = "content" /><br/>
Date : <input type = "text" name = "regdate" /><br/>
<input type="submit"/>
</form>     

<a href="/me5/v.do">Return View</a>


<script> 


function formCheck(){

	 var title = document.forms[0].title.value;
	 var writer = document.forms[0].writer.value;
	 var regdate = document.forms[0].regdate.value;
	 var content = document.forms[0].content.value;

	 if(title == null || title =="")
	 {
		 alert('title is null');
		 document.forms[0].title.focus();
		 return false;
	 }
	
	 if(writer == null || writer =="")
	 {
		 alert('writer is null');
		 document.forms[0].writer.focus();
		 return false;
	 }

	 if(content == null || content =="")
	 {
		 alert('content is null');
		 document.forms[0].content.focus();
		 return false;
	 }

	 if(regdate == null || regdate =="")
	 {
		 alert('regdate is null');
		 document.forms[0].regdate.focus();
		 return false;
	 }

 
 }

</script>
</body>
</html>
