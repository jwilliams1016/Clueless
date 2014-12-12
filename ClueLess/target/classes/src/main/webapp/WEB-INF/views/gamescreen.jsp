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
	.buttonlink { color:#fff;font-size:24px;text-decoration:underline; }
	.disabledlink { color:#888;text-decoration:none;cursor:default !important;  }
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
		<c:set var="scount" value="0"/>
		<div class="status" id="status">
			<ul id="statusUpdate">
				<c:if test="${not empty status}">
					<c:forEach var="statusValue" items="${status}">
						<c:set var="scount" value="${scount + 1}"/>
						<li>${statusValue}</li>
					</c:forEach>
				</c:if>	
			</ul>
		</div>
		<div class="clearfix">&nbsp;</div>
		<div class="label">Move History:</div>
		<c:set var="mcount" value="0"/>
		<div class="movehistory" id="moveHistory">
			<ul id="moveHistoryUpdate">
				<c:if test="${not empty moveHistory}">	
					<c:forEach var="moveValue" items="${moveHistory}">
						<c:set var="mcount" value="${mcount + 1}"/>
						<li>${moveValue}</li>
					</c:forEach>
				</c:if>
			</ul>
		</div>
		<div class="clearfix">&nbsp;</div>
		<div class="label">You are: ${playerName}</div>
	</div>
	<div style="float:right;width:40%;">
		<div id="cards" class="button_small floatnone"><a class="buttonlink" href="">Cards</a></div>
		
		<div id="notebook" class="button_small floatnone"><a class="buttonlink" href="">Detective Notebook</a></div>
		
		<div id="suggest" class="button_small floatnone"><a class="buttonlink" href="">Suggest</a></div>
		
		<div id="accuse" class="button_small floatnone"><a class="buttonlink" href="">Accuse</a></div>
		
		<div id="move" class="button_small floatnone"><a class="buttonlink" href="">Move</a></div>
		
		<div id="end" class="button_small floatnone"><a class="buttonlink" href="">End Turn</a></div>
		
		<div class="button_small floatnone"><a class="buttonlink" href="" onClick="location.href='mainmenu';return false;">Exit</a></div>
		
		<c:if test="${isAdmin}">
			<c:if test="${!isGameActive}">
				<div id="start" class="button_small floatnone"><a class="buttonlink" href="">Start Game</a></div>
			</c:if>
		</c:if>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript">
	var isAdmin = "${isAdmin}";
	var isGamePlayable = "${isGamePlayable}";
	var isGameActive = "${isGameActive}";
	var isMyTurn = "${isMyTurn}";
	var allowSuggest = "${allowSuggest}";
	var allowMove = "${allowMove}";
	var scount = ${scount};
	var mcount = ${mcount};
	
	updateControls();
	
	(function poll() {
		   setTimeout(function() {
			$.ajax({
				type: "GET",
				url: 'ajaxStatus?scount=' + scount + '&mcount=' + mcount,
				dataType: "xml",
				success: function(xml){
					processStatus(xml);
				},
				error: function() {
					alert("Game unexpectedly terminated.");
				},
				complete: poll
			});
		   }, 5000);
	})();
	
	function updateControls() {
		if (isAdmin === "true" && isGamePlayable === "true" && isGameActive !== "true") {
			activateButton("start");
			enableStartButton("start");
		} else {
			deactivateButton("start");
			disableLink("start");
		}
		
		if (isGameActive !== "true") {
			deactivateButton("cards");
			deactivateButton("notebook");
			
			disableLink("cards");
			disableLink("notebook");
		} else {
			activateButton("cards");
			activateButton("notebook");
			
			enableLink("cards","cardscreen");
			enableLink("notebook","detectivenotebook");
		}
		
		if (isGameActive !== "true" || isMyTurn !== "true") {
			deactivateButton("suggest");
			deactivateButton("accuse");
			deactivateButton("move");
			deactivateButton("end");
			
			disableLink("suggest");
			disableLink("accuse");
			disableLink("move");
			disableLink("end");
		} else {
			activateButton("accuse");
			activateButton("end");
			
			enableLink("accuse","accusesuggest?type=Accuse");
			enableLink("end","gamescreen?type=endTurn");
			
			if (allowSuggest === "true") {
				activateButton("suggest");
				enableLink("suggest","accusesuggest?type=Suggest");
			} else {
				deactivateButton("suggest");
				disableLink("suggest");
			}
			
			if (allowMove === "true") {
				activateButton("move");
				enableLink("move","movement");
			} else {
				deactivateButton("move");
				disableLink("move");
			}
		}
	}
	function processStatus(xml) {
		isGamePlayable = $(xml).find('isGamePlayable').text().toString();
		isGameActive = $(xml).find('isGameActive').text().toString();
		isMyTurn = $(xml).find('isMyTurn').text().toString();
		allowSuggest = $(xml).find('allowSuggest').text().toString();
		allowMove = $(xml).find('allowMove').text().toString();
		
		$(xml).find("statusUpdate").each(function() {
			scount++;
			$( "#statusUpdate" ).append( "<li>" + $(this).text().toString() + "</li>" );
		});
		$('#status').scrollTop($('#status')[0].scrollHeight);
		
		$(xml).find("moveHistoryUpdate").each(function() {
			mcount++;
			$( "#moveHistoryUpdate" ).append( "<li>" + $(this).text().toString() + "</li>" );
		});
		$('#moveHistory').scrollTop($('#moveHistory')[0].scrollHeight);
		
		updateControls();
	}
	function activateButton(id) {
		$( "#" + id ).removeClass("disabled");
		$( "#" + id + " a:first" ).removeClass("disabledlink");
	}
	function deactivateButton(id) {
		$( "#" + id ).addClass("disabled");
		$( "#" + id + " a:first" ).addClass("disabledlink");
	}
	function enableLink(id,loc) {
		$( "#" + id + " a:first" ).off( "click" );
		$( "#" + id + " a:first" ).on( "click", function() {
			location.href=loc;
			return false;
		});
	}
	function disableLink(id) {
		$( "#" + id + " a:first" ).off( "click" );
		$( "#" + id + " a:first" ).on( "click", function() {
			return false;
		});
	}
	function enableStartButton(id) {
		$( "#" + id + " a:first" ).off( "click" );
		$( "#" + id + " a:first" ).on( "click", function() {
			var  formData = "startGame=true&scount=" + scount + "&mcount=" + mcount;
			 
			$.ajax({
			    url : "ajaxStatus",
			    type: "POST",
			    dataType: "xml",
			    data : formData,
			    success: function(xml) {
			        processStatus(xml);
			        removeStartButton();
			    },
			    error: function () {
			    	alert("Game unexpectedly terminated.");
			    }
			});
			
			return false;
		});
	}
	function removeStartButton(id) {
		$( "#" + id).remove();
	}

	(function(w, d, s) {
		function go(){
			var js, fjs = d.getElementsByTagName(s)[0], load = function(url, id) {
				if (d.getElementById(id)) {return;}
				js = d.createElement(s); js.src = url; js.id = id;
				fjs.parentNode.insertBefore(js, fjs);
			};
			$('#status').scrollTop($('#status')[0].scrollHeight);
			$('#moveHistory').scrollTop($('#moveHistory')[0].scrollHeight);
		}
		if (w.addEventListener) { w.addEventListener("load", go, false); }
		else if (w.attachEvent) { w.attachEvent("onload", go); }
		else { window.onload = go; }
	}(window, document, 'script'));
	</script>
</body>
</html>