<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctors</title>
</head>
<body>
<h1>Doctors list</h1>
<p><a href='<c:url value="/create_doctor" />'>Create new</a></p>
<table>
<tr><th>Name</th><th>Special</th><th></th></tr>
<c:forEach var="product" items="${doctors}">
 <tr><td>${doctor.name}</td>
    <td>${doctor.special}</td>
    <td>
    <a href='<c:url value="/edit_doctor?id=${doctor.id}" />'>Edit</a> |
    <form method="post" action='<c:url value="/deletedoctor" />' style="display:inline;">
        <input type="hidden" name="id" value="${pacient.id}">
        <input type="submit" value="Delete">
        <br>
        <br>
        <input type="text" name = "doctor">
       	<input type="submit" value="Search">
    </form>
 </td></tr>
</c:forEach>
</table>
</body>
<style type="text/css">
H1 {
  font-size: 50px;
  font-weight: normal;
  cursor: pointer;
  text-shadow: -1px -1px #000,
               0 1px 0 #444;
  color: #222;
  transition: all 1s;
  }
  H1:hover {
    color: #1A1A1A;
    }
    a {
  color:#34495e; 
  line-height: 1.2; 
  position: relative; 
  padding: 0 14px; 
  text-transform: uppercase;
}
a:after {
  content: "";
  height: 100%;
  min-width: 4px;
  background: #34495e;
  position: absolute;
  left: 0;
  bottom: 0;
  transition: .5s;
}
a:hover:after {
  min-width: 100%;
  background: #95a5a6;
  opacity: .35;
}
    body{
    background:#DCD4AE;
    }
</style>
</html>