<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
<style type="text/css">
	.button { width:240px;height:120px;line-height:120px;background:#4f81bd;border:solid #385d8a 1px;border-radius:10px;color:#0000ff;float:left;margin:20px; }
	.buttonlink { color:#fff;font-size:24px; }
	.floatright { float:right; }
</style>
</head>
<body style="text-align:center;">	
	<h2>Create Game</h2>
	<div>
		<form id="createForm" method="get" action="">
		Game Security: <select name="type"><option value="public" <c:if test="${type=='public'}">selected</c:if>>Public</option><option value="private" <c:if test="${type=='private'}">selected</c:if>>Private</option></select><br />
		Game Name: <input type="text" name="name" value="${name}"><br />
		Password: <input type="password" name="password" value=""><br />
		</form>
		${errorMessage}
	</div>
	<div class="button"><a class="buttonlink" href="" onClick="document.getElementById('createForm').submit();return false;">Create Game</a></div>
	<div class="button floatright"><a class="buttonlink" href="" onClick="location.href='mainmenu';return false;">Main Menu</a></div>
</body>
</html>