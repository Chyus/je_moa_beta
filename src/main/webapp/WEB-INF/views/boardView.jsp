<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBOSS View</title>
<style type="text/css">
table,td,th
{
border:1px solid green;
}
th
{
background-color:green;
color:white;
}
</style>
</head>

<body>

<h1>FrameOne View</h1>
    <table>
	    <tr>
		    <th>No</th>
		    <th>Title</th>
		    <th>Writer</th>
		    <th>Date</th>
		    <th>Count</th>
		    <th>Ip</th>
		    <!-- <th>Content</th> -->
	    </tr>
	    
<c:forEach items="${articleList}" var="article">
	  
	    <tr>
	    <td>${article.idx}</td>
	    <td><a href='/me5/detail.do?idx=${article.idx}&regip=${article.regip}'>${article.title}</a></td>
	    <td>${article.writer}</td>
	    <td>${article.regdate}</td>
	    <td>${article.count}</td>
	    <td>${article.regip}</td>
	    </tr>
</c:forEach>
	    
    </table>
    
<a href="write.do">Write</a>

</body>
</html>
