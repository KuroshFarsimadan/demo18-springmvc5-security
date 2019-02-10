<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java EE - Demo 18</title>
</head>
<body>
	<h1>Java EE</h1>
	<h2>DEMO 18 - SPRING MVC 5 / SECURITY & THYME</h2>

	<div id="contentbox">
		<h3>Content</h3>
		<ul>
			<li>Spring Security 5.0.0</li>
			<li>Authentication</li>
			<li>Authorization</li>
			<li>User information in the XML-file</li>
			<li>User information in the database</li>
			<li>Web/HTTP Security</li>
			<li>Business Object (Method) Security</li>
		</ul>
		<h3>Functionality</h3>
		<p>
			<i>Test the following users:</i><br /> Kurosh:Password1 (ROLE_USER)
			OR Farsimadan:Password2 (ROLE_USER, ROLE_ADMIN)
		</p>
		<h3>Links</h3>
		<p>
			<a href="loginpage">loginpage</a><br /> <a href="secure/main">secure/main</a><br />
			<a href="secure/admin/tools">secure/admin/tools</a>
		</p>
		<p>
			Extra pages:<br /> <a href="misc/admins">misc/admins</a><br /> <a
				href="misc/loggedin">misc/loggedin</a><br /> <a href="misc/all">misc/all</a><br />
		</p>
	</div>
</body>
</html>