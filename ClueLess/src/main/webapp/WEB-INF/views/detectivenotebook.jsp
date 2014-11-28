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
	<h2>Detective Notebook</h2>
	<form action="" method="get">
	<div class="notebook-container">
		<div class="notebook-item">
			<span style="font-weight:bold;">Suspects</span><br />
			<input type="checkbox"> Colonel Mustard<br />
			<input type="checkbox"> Miss Scarlet<br />
			<input type="checkbox"> Professor Plum<br />
			<input type="checkbox"> Mr. Green<br />
			<input type="checkbox"> Mrs. White<br />
			<input type="checkbox"> Mrs. Peacock<br />
			<br />
			<span style="font-weight:bold;">Rooms</span><br />
			<input type="checkbox"> Study <br />
			<input type="checkbox"> Hall <br />
			<input type="checkbox"> Lounge <br />
			<input type="checkbox"> Library <br />
			<input type="checkbox"> Billiard Room <br />
			<input type="checkbox"> Dining Room <br />
			<input type="checkbox"> Conservatory <br />
			<input type="checkbox"> Ballroom <br />
			<input type="checkbox"> Kitchen <br />
		</div>
		<div class="notebook-item">
			<span style="font-weight:bold;">Weapons</span><br />
			<input type="checkbox"> Rope <br />
			<input type="checkbox"> Lead Pipe <br />
			<input type="checkbox"> Knife <br />
			<input type="checkbox"> Wrench <br />
			<input type="checkbox"> Candlestick <br />
			<input type="checkbox"> Revolver <br />
			<br />
			Notes:<br/>
			<textarea name="notes" rows="13" cols="25">
		
			</textarea><br />
		</div>
		<div class="button_small floatcenter"><a class="buttonlink" href="" onClick="window.history.back();return false;">Back</a></div>
	</div>
	</form>
</body>
</html>