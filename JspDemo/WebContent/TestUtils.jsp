<%@page import="com.lokesh.utils.Fun"%>

<html>
<head>
<style>

h3{
text-decoration: none;
color: blue;
}

</style>
</head>
<body>

<h3 style="font-size: 22px;border-bottom: 1px solid green" align="center">
Sum is : <% out.println(Fun.sum(20, 20)) ;%> 
</h3>

</body>

</html>
