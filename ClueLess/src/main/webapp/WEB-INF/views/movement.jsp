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
	.floatleft { float:left; }
	.floatright { float:right; }
	.floatnone { float:none; }
</style>
</head>
<body style="text-align:center;">	
	<h2>Move</h2>
	<div>
		<form method="get" action="">
		Location:<br />
		<select name="location">
			<option value="Room / Hallway">Room / Hallway</option>
			<option value="stdy">Study</option>
			<option value="hall">Hall</option>
			<option value="lnge">Lounge</option>
			<option value="libr">Library</option>
			<option value="blrrm">Billiard Room</option>
			<option value="dngrm">Dining Room</option>
			<option value="cnsrv">Conservatory</option>
			<option value="blrm">Ballroom</option>
			<option value="kitch">Kitchen</option>
		</select>
		</form>
	</div>
	<div>
		<div class="button_small floatleft"><a class="buttonlink" href="" onClick="location.href='gamescreen';return false;">Confirm</a></div>
		<div class="button_small floatright"><a class="buttonlink" href="" onClick="location.href='gamescreen';return false;">Cancel</a></div>
	</div>
</body>
</html>