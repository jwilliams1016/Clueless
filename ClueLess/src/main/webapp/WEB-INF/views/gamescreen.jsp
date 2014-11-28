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
	.movehistory { width:300px;height:150px;background:#4f81bd;border:solid #385d8a 1px;color:#fff;margin:20px 0;text-align:left;float:left; }
	.status { width:400px;height:60px;background:#4f81bd;border:solid #385d8a 1px;color:#fff;margin:20px 0;text-align:left;float:left; }
	.gameblock { float:left;width:100px; }
	.floatleft { float:left; }
	.floatright { float:right; }
	.floatnone { float:none; }
</style>
</head>
<body>	
	<h2>Game Screen</h2>
	<div style="float:left;width:60%;">
		<div style="text-align:left;">
			<div class="gameblock" style="clear:both;">Study</div><div class="gameblock">X X X</div><div class="gameblock">Hall</div><div class="gameblock">X X X</div><div class="gameblock">Lounge</div>
			<div class="gameblock" style="clear:both;">X</div><div class="gameblock">.</div><div class="gameblock">X</div><div class="gameblock">.</div><div class="gameblock">X</div>
			<div class="gameblock" style="clear:both;">X</div><div class="gameblock">.</div><div class="gameblock">X</div><div class="gameblock">.</div><div class="gameblock">X</div>
			<div class="gameblock" style="clear:both;">X</div><div class="gameblock">.</div><div class="gameblock">X</div><div class="gameblock">.</div><div class="gameblock">X</div>
			
			<div class="gameblock" style="clear:both;">Library</div><div class="gameblock">X X X</div><div class="gameblock">Billiard Room</div><div class="gameblock">X X X</div><div class="gameblock">Dining Room</div>
			<div class="gameblock" style="clear:both;">X</div><div class="gameblock">.</div><div class="gameblock">X</div><div class="gameblock">.</div><div class="gameblock">X</div>
			<div class="gameblock" style="clear:both;">X</div><div class="gameblock">.</div><div class="gameblock">X</div><div class="gameblock">.</div><div class="gameblock">X</div>
			<div class="gameblock" style="clear:both;">X</div><div class="gameblock">.</div><div class="gameblock">X</div><div class="gameblock">.</div><div class="gameblock">X</div>
			
			<div class="gameblock" style="clear:both;">Conservatory</div><div class="gameblock">X X X</div><div class="gameblock">Ballroom</div><div class="gameblock">X X X</div><div class="gameblock">Kitchen</div>
		</div>
		<div class="status">
			Status: 
		</div>
		<div class="movehistory">
			Move History<br />
		</div>
	</div>
	<div style="float:right;width:40%;">
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='cardscreen';;return false;">Cards</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='detectivenotebook';return false;">Detective Notebook</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='accusesuggest?type=Suggest';return false;">Suggest</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='accusesuggest?type=Accuse';return false;">Accuse</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='movement';return false;">Move</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='gamescreen';return false;">End Turn</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='mainmenu';return false;">Exit</a></div>
	</div>
</body>
</html>