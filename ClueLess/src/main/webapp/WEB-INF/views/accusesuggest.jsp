<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
<style type="text/css">
	.button_small { width:240px;height:60px;line-height:60px;background:#4f81bd;border:solid #385d8a 1px;border-radius:10px;color:#0000ff;float:left;margin:20px;text-align:center }
	.buttonlink { color:#fff;font-size:24px; }
</style>
</head>
<body style="text-align:center;">	
	<h2>${type} Screen</h2>
	<div style="float:left;width:60%;text-align:left;">
		<form id="accusesuggestForm" method="get" action="">
		Character:<br />
		<select name="character">
			<option value="">< Character ></option>
			<option value="clnmustrd">Colonel Mustard</option>
			<option value="msscarl">Miss Scarlet</option>
			<option value="profplum">Professor Plum</option>
			<option value="mrgrn">Mr. Green</option>
			<option value="mrswht">Mrs. White</option>
			<option value="mrspea">Mrs. Peacock</option>
		</select><br />
		<br />
		Weapon:<br />
		<select name="weapon">
			<option value="">< Weapon ></option>
			<option value="rope">Rope</option>
			<option value="pipe">Lead Pipe</option>
			<option value="knife">Knife</option>
			<option value="wrench">Wrench</option>
			<option value="cndlst">Candlestick</option>
			<option value="rvlvr">Revolver</option>
		</select><br />
		<br />
		Room:<br />
		<select name="room">
			<option value="">< Room ></option>
			<option value="stdy">Study</option>
			<option value="hall">Hall</option>
			<option value="lnge">Lounge</option>
			<option value="libr">Library</option>
			<option value="blrrm">Billiard Room</option>
			<option value="dngrm">Dining Room</option>
			<option value="cnsrv">Conservatory</option>
			<option value="blrm">Ballroom</option>
			<option value="kitch">Kitchen</option>
		</select><br />
		<br />
		<div class="button_small"><a class="buttonlink" href="" onClick="document.getElementById('accusesuggestForm').submit();return false;">${type}</a></div>
		</form>
	</div>
	<div style="float:right;width:40%;">
		<div class="button_small"><a class="buttonlink" href="" onClick="location.href='detectivenotebook';return false;">Detective Notebook</a></div>
		<div class="button_small"><a class="buttonlink" href="" onClick="location.href='gamescreen';return false;">Return to Game</a></div>
	</div>
</body>
</html>