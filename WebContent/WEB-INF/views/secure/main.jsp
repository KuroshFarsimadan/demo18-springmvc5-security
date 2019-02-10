<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main page</title>
</head>
<body>
	<h1>Secured main page</h1>
	<h3>
		Loggedin:
		<sec:authentication property="principal.username" />
	</h3>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<p>
			<a href="admin/tools">Admin tools</a>
		</p>
	</sec:authorize>
	<p>
		<a href="<c:url value="/logout" />">Log Out</a>
	</p>
</body>
</html>