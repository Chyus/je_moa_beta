<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.regex.Pattern" %>
<%@page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBOSS Detail View</title>
</head>

<%--
<%
   String idx = request.getParameter("idx");
   
   try{
	   String driverName = "org.springframework.jdbc.datasource.DriverManagerDataSource";
	   String url = "jdbc:mysql://localhost:3306/je_test";
	   ResultSet rs = null;
	   
	   Class.forName(driverName);
	   Connection con = DriverManager.getConnection(url,"root"," ");
	   out.println("DataBase Success!!");
	   
	   Statement stmt = con.createStatement();
	   String sql = "select * from board3 where idx = " + idx;
	   //String sql = "select * from board3 where idx = 1";
       rs = stmt.executeQuery(sql);
	   
       while(rs.next()){
    	   request.setAttribute("idx", rs.getString("idx"));
    	   request.setAttribute("writer", rs.getString("writer"));
    	   request.setAttribute("regdate", rs.getString("regdate"));
    	   request.setAttribute("count", rs.getString("count"));
    	   request.setAttribute("title", rs.getString("title"));
    	   request.setAttribute("content", rs.getString("content"));
       }
		con.close();
		
		}catch ( Exception e){
			   
			   out.println("DataBase Fail!!");
			   out.println(e.getMessage());
			   e.printStackTrace();
		}
       
%>
--%>

<body>

<h1>FrameOne Deatil View</h1>
    <table>
    
 <c:forEach items="${detailList}" var="detailList">
 
	    <tr>
		    <td>No</td>
		    <td>${detailList.idx}</td>
		    <td>Writer</td>
		    <td>${detailList.writer}</td>
		    <td>Date</td>
		    <td>${detailList.regdate}</td>
		    <td>Count</td>
		    <td>${detailList.count}</td>
	    </tr>
	    
	    <tr>
	        <th colspan="2">Title</th>
		    <td colspan="6">${detailList.title}</td>
	    </tr>
	    
	    <tr>
	        <th colspan="2">Content</th>
		    <td colspan="6">${detailList.content}</td>
	    </tr>
	    
	    <tr>
	    <td><a href="/me5/delete.do?idx=${detailList.idx}">Delete</a></td>
	    <td><a href="/me5/v.do">Return View</a></td>
	    </tr>
	    
</c:forEach>  
         
        </table>
        
        


</body>
</html>
