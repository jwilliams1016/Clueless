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
	<h2>Disproven Screen</h2>
	<div style="text-align:left;">
		You have been disproven:<br />
		-- Card --<br />
		<br />
		<button onClick="location.href='gamescreen';return false;">Close</button>
	</div>
</body>
<footer class="footer">J-Cubed, Inc. 2014</footer>
</html>