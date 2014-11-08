<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="design.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>welcome to Banking system</h2>
logged in as :
<%
String username=(String)session.getAttribute("NAME");
out.println(username);

%>

<form action="sbi.jsp">
<div>
<input id="headButton" type="submit" value="SBI Banking" >
</div>
</form>

<form action="hdfc.jsp">
<div>
<input id="headButton" type="submit" value="HDFC Banking">
</div>
</form>

<form action="city.jsp">
<div>
<input id="headButton" type="submit" value="CITY Banking">
</div>
</form>

<form action="logout">
<div>
<input id="headButton" type="submit" value="Logout">
</div>
</form>


</body>
</html>