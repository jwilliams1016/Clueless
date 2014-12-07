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
		Colonel Mustard <input type="checkbox" name="suspects" value="clnmst"><br />
		Miss Scarlet <input type="checkbox" name="suspects" value="msscar"><br />
		Professor Plum <input type="checkbox" name="suspects" value="profplm"><br />
		Mr. Green <input type="checkbox" name="suspects" value="mrgrn"><br />
		Mrs. White <input type="checkbox" name="suspects" value="mrswht"><br />
		Mrs. Peacock <input type="checkbox" name="suspects" value="mrspck"><br />
		<br />
		<span style="font-weight:bold;">Rooms</span><br />
		Study <input type="checkbox" name="rooms" value="stdy"><br />
		Hall <input type="checkbox" name="rooms" value="hall"><br />
		Lounge <input type="checkbox" name="rooms" value="lnge"><br />
		Library <input type="checkbox" name="rooms" value="libry"><br />
		Billiard Room <input type="checkbox" name="rooms" value="blrdrm"><br />
		Dining Room <input type="checkbox" name="rooms" value="dngrm"><br />
		Conservatory <input type="checkbox" name="rooms" value="cnsrv"><br />
		Ballroom <input type="checkbox" name="rooms" value="blrm"><br />
		Kitchen <input type="checkbox" name="rooms" value="kitch"><br />
	</div>
	<div style="text-align:left;float:left;width:50%;">
		<span style="font-weight:bold;">Weapons</span><br />
		Rope <input type="checkbox" name="weapons" value="rope"><br />
		Lead Pipe <input type="checkbox" name="weapons" value="ldppe"><br />
		Knife <input type="checkbox" name="weapons" value="knif"><br />
		Wrench <input type="checkbox" name="weapons" value="wrnch"><br />
		Candlestick <input type="checkbox" name="weapons" value="cndlst"><br />
		Revolver <input type="checkbox" name="weapons" value="rvlvr"><br />
		<br />
		Notes:
		<textarea name="notes">
		
		</textarea><br />
		<div style="float:left;text-align:center;">
			<div class="button_small floatnone"><a class="buttonlink" href="" onClick="window.history.back();return false;">Back</a></div>
		</div>
	</div>
	</form>
</body>
</html>