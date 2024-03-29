<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>CustomerRegistration Application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css"    href="${pageContext.request.contextPath}/resources/static/css/font.css"/>
    	<link rel="stylesheet" type="text/css"    href="/css/font.css"/>
</head>
<body >
<div><p><h2>Click here</h2> to Register new Customer <a href="/springbootexm/showcustomerForm">Registration form</a></p>
<br/>
pageContext.request.contextPath->"${pageContext.request.contextPath}"
</div>
<div align="center">
<table border=1>
<tr><td><b>Customer ID:</b></td>
    <td><b>Customer name:</b></td>
    <td><b>Customer State:</b></td>
    <td> </td>
    <td> </td>
</tr>
<c:forEach var="entry" items="${customerMap}">
        <tr><td><c:out value="${entry.key}"/></td>
        <td><c:out value="${entry.value.firstName} ${entry.value.lastName}"/> </td>
        <td><c:out value="${entry.value.state}"/> </td>
        <td> <a href="/springbootexm/modifyCustomer?id=${entry.key}">Modify</a></td>
        <td> <a href="/springbootexm/deleteCustomer?id=${entry.key}">Delete</a></td>
        </tr>
</c:forEach>


</table>
</div>
</body>
</html>