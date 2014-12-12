<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value='/resources/css/gameboard.css'/>" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="resources/js/scripts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
<style type="text/css">
	.gameblock { float:left;width:100px; }
	.label { clear:both;float:left;text-align:left;font-weight:bold; }
	.clearfix {clear:both; }
	.floatleft { float:left; }
	.floatright { float:right; }
	.floatnone { float:none; }
</style>
</head>
<body>	
	<h2>Game Screen</h2>

	<!-- 	<div style="float:right;width:40%;"> -->
		<div class="top">
			<c:choose>
				<c:when test="${allowMove}">
					<button class="nav-button" onClick="location.href='movement';return false;">Move</button>
				</c:when>
				<c:otherwise>
					<button class="nav-button button-disabled">Move</button>
				</c:otherwise>
			</c:choose>
		
			<c:choose>
				<c:when test="${allowSuggest}">
					<button class="nav-button floatnone" onClick="location.href='accusesuggest?type=Suggest';return false;">Suggest</button>
				</c:when>
				<c:otherwise>
					<button class="nav-button button-disabled">Suggest</button>
				</c:otherwise>
			</c:choose>
		
			<button class="nav-button" onClick="location.href='accusesuggest?type=Accuse';return false;">Accuse</button>
			<button class="nav-button" onClick="location.href='gamescreen?type=endTurn';return false;">End Turn</button>
			<button class="nav-button" onClick="popUp('gamerules')">Help</button>	
			<button class="nav-button" onClick="location.href='mainmenu';return false;">Exit</button>
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

	<div class="wrapper">
		<aside class="aside aside-right">
			<h3>Detective Notebook</h3>
			<form action="" method="get">
			<div class="notebook-container">
				<div class="notebook-item">
					<span style="font-weight:bold;">Suspects</span><br />
					<input type="checkbox"> Col. Mustard<br />
					<input type="checkbox"> Ms. Scarlet<br />
					<input type="checkbox"> Prof. Plum<br />
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
					</br>
					<span style="font-weight:bold;">Weapons</span><br />
					<input type="checkbox"> Rope <br />
					<input type="checkbox"> Lead Pipe <br />
					<input type="checkbox"> Knife <br />
					<input type="checkbox"> Wrench <br />
					<input type="checkbox"> Candlestick <br />
					<input type="checkbox"> Revolver <br />
					</br>
					Notes:<br/>
					<textarea name="notes" rows="6" cols="14"></textarea><br /> 
				</div>
			</div>
			</form>
		</aside>
		<aside class="aside aside-left">
			<h3>Game Board</h3>
			<div class="gameboard">
			
				<div class="study abs" id=""></div>
				<div class="hall abs" id=""></div>
				<div class="lounge abs" id=""></div>
				<div class="library abs" id=""></div>
				<div class="billiard abs" id=""></div>
				<div class="dining abs" id=""></div>
				<div class="conservatory abs" id=""></div>
				<div class="ballroom abs" id=""></div>
				<div class="kitchen abs" id=""></div>
					
				<div class="hwy1 abs" id=""></div>
				<div class="hwy2 abs" id="scarlet"></div>
				<div class="hwy3 abs" id="plum"></div>
				<div class="hwy4 abs" id=""></div>
				<div class="hwy5 abs" id="mustard"></div>
				<div class="hwy6 abs" id=""></div>
				<div class="hwy7 abs" id=""></div>
				<div class="hwy8 abs" id="peacock"></div>
				<div class="hwy9 abs" id=""></div>
				<div class="hwy10 abs" id=""></div>
				<div class="hwy11 abs" id="green"></div>
				<div class="hwy12 abs" id="white"></div>

			</div>
		
		</aside>

	</div>
	<div class="wrapper">
		<aside class="aside">
		<h3>Cards</h3>
		<div class="cards">
			<c:if test="${not empty cards}">
				<ul>
					<c:forEach var="card" items="${cards}">
						<li>${card}</li>
					</c:forEach>
				</ul>
			</c:if>
		</div>
		</aside>
		<aside class="aside">
		<h3>Status</h3>
		<div class="status" id="status"> 
			<c:if test="${not empty status}">
				<ul>
					<c:forEach var="statusValue" items="${status}">
						<li>${statusValue}</li>
					</c:forEach>
				</ul>
		 
			</c:if>
		</div>
		</aside>
		<aside class="aside">
			<h3>Move History</h3>
			<div class="movehistory" id="moveHistory">
				<c:if test="${not empty moveHistory}">
					<ul>
						<c:forEach var="moveValue" items="${moveHistory}">
							<li>${moveValue}</li>
						</c:forEach>
					</ul>
			 
				</c:if>
			</div>
		</aside>
	</div>

	<%-- 	<div style="float:left;width:60%;">
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

	</div> --%>
	</div>
</body>
<footer class="footer">J-Cubed, Inc. 2014</footer>
</html>