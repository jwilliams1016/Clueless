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
</style>
</head>
<body style="text-align:center;">	
	<h2>Main Menu</h2>
	<div class="button"><a class="buttonlink" href="" onClick="location.href='creategame';return false;">Create Game</a></div>
	<div class="button"><a class="buttonlink" href="" onClick="location.href='joingame';return false;">Join Game</a></div>
	<div class="button"><a class="buttonlink" href="" onClick="location.href='gamerules';return false;">Game Rules</a></div>
</body>
</html>