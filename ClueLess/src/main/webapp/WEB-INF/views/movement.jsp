<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
<style type="text/css">
	.button_small { width:240px;height:60px;line-height:60px;background:#4f81bd;border:solid #385d8a 1px;border-radius:10px;color:#0000ff;float:left;margin:20px; }
	.buttonlink { color:#fff;font-size:24px; }
	.floatleft { float:left; }
	.floatright { float:right; }
	.floatnone { float:none; }
</style>
</head>
<body>	
	<h2>Move</h2>
	<div>
		<form method="post" action="" id="locationForm">
		Location:<br />
		<select name="location">
			<c:if test="${not empty options}">
				<c:set var="count" value="0" scope="page" />
				<c:forEach var="option" items="${options}">
					<c:set var="count" value="${count + 1}" scope="page"/>
					<option value="${count}">${option}</option>
				</c:forEach>
			</c:if>
		</select>
		</form>
	</div>
	<div>
		<div class="button_small floatleft"><a class="buttonlink" href="" onClick="document.getElementById('locationForm').submit();return false;">Confirm</a></div>
		<div class="button_small floatright"><a class="buttonlink" href="" onClick="location.href='gamescreen';return false;">Cancel</a></div>
	</div>
</body>
</html>