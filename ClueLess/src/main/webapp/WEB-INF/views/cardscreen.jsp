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
</style>
</head>
<body>	
	<h2>Card Screen</h2>
	<div style="float:left;width:60%;">
		Card 1<br />
		Card 2<br />
		Card 3<br />
	</div>
	<div style="float:right;width:40%;">
		<div class="button_small"><a class="buttonlink" href="" onClick="location.href='detectivenotebook';return false;">Detective Notebook</a></div>
		<div class="button_small"><a class="buttonlink" href="" onClick="location.href='gamescreen';return false;">Return to Game</a></div>
	</div>
</body>
</html>