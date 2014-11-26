<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
<style type="text/css">
	.button_small { width:240px;height:60px;line-height:60px;background:#4f81bd;border:solid #385d8a 1px;border-radius:10px;color:#0000ff;float:left;margin:20px; }
	.buttonlink { color:#fff;font-size:24px; }
</style>
</head>
<body style="text-align:center;">	
	<h2>Detective Notebook</h2>
	<form action="" method="get">
	<div style="text-align:left;float:left;width:50%;">
		<span style="font-weight:bold;">Suspects</span><br />
		Colonel Mustard <input type="radio"><br />
		Miss Scarlet <input type="radio"><br />
		Professor Plum <input type="radio"><br />
		Mr. Green <input type="radio"><br />
		Mrs. White <input type="radio"><br />
		Mrs. Peacock <input type="radio"><br />
		<br />
		<span style="font-weight:bold;">Rooms</span><br />
		Study <input type="radio"><br />
		Hall <input type="radio"><br />
		Lounge <input type="radio"><br />
		Library <input type="radio"><br />
		Billiard Room <input type="radio"><br />
		Dining Room <input type="radio"><br />
		Conservatory <input type="radio"><br />
		Ballroom <input type="radio"><br />
		Kitchen <input type="radio"><br />
	</div>
	<div style="text-align:left;float:left;width:50%;">
		<span style="font-weight:bold;">Weapons</span><br />
		Rope <input type="radio"><br />
		Lead Pipe <input type="radio"><br />
		Knife <input type="radio"><br />
		Wrench <input type="radio"><br />
		Candlestick <input type="radio"><br />
		Revolver <input type="radio"><br />
		<br />
		Notes:
		<textarea>
		
		</textarea><br />
		<div style="float:left;text-align:center;">
			<div class="button_small floatnone"><a class="buttonlink" href="" onClick="window.history.back();return false;">Back</a></div>
		</div>
	</div>
	</form>
</body>
</html>