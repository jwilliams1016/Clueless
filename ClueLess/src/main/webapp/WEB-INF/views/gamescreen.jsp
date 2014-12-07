<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
<style type="text/css">
	.button_small { width:240px;height:60px;line-height:60px;background:#4f81bd;border:solid #385d8a 1px;border-radius:10px;color:#0000ff;float:left;margin:20px;font-size:24px; }
	.buttonlink { color:#fff;font-size:24px; }
	.movehistory { clear:both;width:400px;height:150px;background:#4f81bd;border:solid #385d8a 1px;color:#fff;margin:0;text-align:left;float:left;overflow-y:scroll; }
	.status { clear:both;width:400px;height:150px;background:#4f81bd;border:solid #385d8a 1px;color:#fff;margin:0;text-align:left;float:left;overflow-y:scroll; }
	.gameblock { float:left;width:100px; }
	.label { clear:both;float:left;text-align:left;font-weight:bold; }
	.clearfix {clear:both; }
	.floatleft { float:left; }
	.floatright { float:right; }
	.floatnone { float:none; }
	.disabled { background:#f8f8f8;color:#888; }
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
		<div class="clearfix">&nbsp;</div>
		<div class="label">Status:</div>
		<div class="status" id="status">
			<c:if test="${not empty status}">
				<ul>
					<c:forEach var="statusValue" items="${status}">
						<li>${statusValue}</li>
					</c:forEach>
				</ul>
		 
			</c:if>
		</div>
		<div class="clearfix">&nbsp;</div>
		<div class="label">Move History:</div>
		<div class="movehistory" id="moveHistory">
			<c:if test="${not empty moveHistory}">
				<ul>
					<c:forEach var="moveValue" items="${moveHistory}">
						<li>${moveValue}</li>
					</c:forEach>
				</ul>
		 
			</c:if>
		</div>
	</div>
	<div style="float:right;width:40%;">
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='cardscreen';;return false;">Cards</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='detectivenotebook';return false;">Detective Notebook</a></div>
		
		<c:choose>
			<c:when test="${allowSuggest}">
				<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='accusesuggest?type=Suggest';return false;">Suggest</a></div>
			</c:when>
			<c:otherwise>
				<div class="button_small floatnone disabled">Suggest</div>
			</c:otherwise>
		</c:choose>
		
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='accusesuggest?type=Accuse';return false;">Accuse</a></div>
		
		<c:choose>
			<c:when test="${allowMove}">
				<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='movement';return false;">Move</a></div>
			</c:when>
			<c:otherwise>
				<div class="button_small floatnone disabled">Move</div>
			</c:otherwise>
		</c:choose>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='gamescreen?type=endTurn';return false;">End Turn</a></div>
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='mainmenu';return false;">Exit</a></div>
	</div>
	<script type="text/javascript">
	  (function(w, d, s) {
		  function go(){
		    var js, fjs = d.getElementsByTagName(s)[0], load = function(url, id) {
			  if (d.getElementById(id)) {return;}
			  js = d.createElement(s); js.src = url; js.id = id;
			  fjs.parentNode.insertBefore(js, fjs);
			};
			var status = document.getElementById('status');
			status.scrollTop = status.scrollHeight;
			
			var moveHistory = document.getElementById('moveHistory');
			moveHistory.scrollTop = moveHistory.scrollHeight;
		  }
		  if (w.addEventListener) { w.addEventListener("load", go, false); }
		  else if (w.attachEvent) { w.attachEvent("onload", go); }
		  else { window.onload = go; }
		}(window, document, 'script'));
	</script>
</body>
</html>