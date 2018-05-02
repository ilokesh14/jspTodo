<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Todo List</title>
</head>
<body>

<form action="TestToDoList.jsp">

Enter something to add into to do list: 
<input type="text" name="todo">
<input type="submit" name="submit">
</form>

<%

ArrayList<String> list = (ArrayList<String>) session.getAttribute("todo") ;

if(list == null){
	list = new ArrayList<String>() ;
	session.setAttribute("todo",list) ;
}

String items = request.getParameter("todo") ;

if(items != null) {
	list.add(items) ;
}

%>

<hr>
<h2>Todo List Is : </h2>
<hr>
<ol>
		<%
		for(String i:list){
			out.println("<li>"+i+"</li>") ;
		}
		%>
</ol>

</body>
</html>