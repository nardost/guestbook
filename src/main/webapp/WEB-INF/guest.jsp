<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="guest.*" %>
<jsp:useBean id="guestDao" type="guest.GuestDao" scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JPA Guestbook Web Application</title>
</head>
<body>
<form method="POST" action="guest.html">
<input type="text" name="name">
<input type="submit" value="Register">
</form>
<table>
<% for(Guest guest : guestDao.getAllGuests()) { %>
	<tr><td><%= guest.getId() %></td><td><%= guest.getName() %></td>
<% } %>
</table>
</body>
</html>