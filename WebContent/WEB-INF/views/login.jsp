<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@page session="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Signin</title>

</head>
<body>
	<div>
		<h1>Signin</h1>

		<c:if test="${not empty loginerror}">
			<p class="Error">Signin failed. Username or password is in the
				wrong format.</p>
		</c:if>

		<c:if test="${not empty loggedout}">
			<p class="Info">Logout successful.</p>
		</c:if>
		<c:url value="/j_spring_security_check" var="loginUrl" />
		<form action="${loginUrl}" method="POST">
			<fieldset>
				<table>
					<tr>
						<td>USERNAME:</td>
						<td><input type='text' id="j_username" name='j_username'
							value=''></td>
					</tr>
					<tr>
						<td>PASSWORD:</td>
						<td><input type='password' id="j_password" name='j_password' /></td>
					</tr>
					<tr>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<td>&nbsp;</td>
						<td><button type="submit">Signin</button></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>
<!--  
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<title>Login page</title>
</head>
<body>
	<h1>Login page</h1>

	<p th:if="${loginerror}" class="error">Signin failed. Username or
		password is in the wrong format.</p>

	<p th:if="${loggedout}" class="error"><p class="Info">Logout successful.</p></p>






	<form th:action="@{/j_spring_security_check}" method="post">

		<fieldset>
			<table>
				<tr>
					<td>USERNAME:</td>
					<td><input type='text' id="j_username" name='j_username'
						value=''></td>
				</tr>
				<tr>
					<td>PASSWORD:</td>
					<td><input type='password' id="j_password" name='j_password' /></td>
				</tr>
				<tr>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<td>&nbsp;</td>
					<td><button type="submit">Signin</button></td>
				</tr>
			</table>
		</fieldset>

	</form>
</body>
</html> -->






'
