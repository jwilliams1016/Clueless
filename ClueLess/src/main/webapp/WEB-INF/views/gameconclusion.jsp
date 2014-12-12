<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>

</head>
<body>
	<img src="resources/images/Header_Logo-small.jpg"  style="border:0;">	
	<h2>Confidential "Case File"</h2>
	<h3>Congratulations, you have won the game!</h3>
	<div style="float:left;text-align:left;">
		<c:if test="${not empty casefile}">
			<ul>
				<c:forEach var="card" items="${casefile}">
					<li>${card}</li>
				</c:forEach>
			</ul>
		</c:if>
	</div>
	<div style="float:right;">
		<button onClick="location.href='mainmenu';return false;">Exit Game</button>
	</div>
</body>
<footer class="footer">J-Cubed, Inc. 2014</footer>
</html>