package com.clueless;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
 
@Controller
public class clueLessController {
	private String errorMessage = "";
	private ArrayList<String> status = new ArrayList<String>();
	private ArrayList<String> moveHistory = new ArrayList<String>();
	private Game game = null;
	private clueLessModel gameBoard = null;
	
	@RequestMapping("/mainmenu")
	public ModelAndView showMainMenu() {
		System.out.println("in controller - mainmenu");
		
		if (gameBoard != null) {
			gameBoard.endGame();
		}
		
		ModelAndView mv = new ModelAndView("mainmenu");
		return mv;
	}
	
	@RequestMapping("/gamerules")
	public ModelAndView showGameRules() {
		System.out.println("in controller - gamerules");
 
		ModelAndView mv = new ModelAndView("gamerules");
		return mv;
	}
	
	@RequestMapping(value = "/creategame")
	public ModelAndView showCreateGame(
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "password", required = false) String password) {
		System.out.println("in controller - creategame");
 
		if (type != null && !type.isEmpty() && name != null && !name.isEmpty() && password != null) {
			if (type.equals("private") && password.isEmpty()) {
				errorMessage = "You must enter a password for a private game!";
			} else {
				game = new Game(name, password);
				
				gameBoard = clueLessModel.getInstance();
				return showGameScreen("");
			}
		} else if (type != null && !type.isEmpty() && name != null && name.isEmpty()) {
			errorMessage = "Please enter a name!";
		}
		
		System.out.println(errorMessage);
		
		ModelAndView mv = new ModelAndView("creategame");
		mv.addObject("type", type);
		mv.addObject("name", name);
		mv.addObject("password", password);
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		return mv;
	}
	
	@RequestMapping(value = "/joingame")
	public ModelAndView showJoinGame(
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "password", required = false) String password) {
		System.out.println("in controller - joingame");
 
		if (type != null && !type.isEmpty() && name != null && !name.isEmpty() && password != null) {
			if (type.equals("private") && password.isEmpty()) {
				errorMessage = "You must enter a password for a private game!";
			} else if (game != null) {
				if (game.login(name, password))
					return showGameScreen("");
				else
					errorMessage = "Name and/or password is incorrect!";
			} else {
				errorMessage = "Game does not exist yet!";
			}
		} else if (type != null && !type.isEmpty() && name != null && name.isEmpty()) {
			errorMessage = "Please enter a name!";
		}
		
		System.out.println(errorMessage);
		
		ModelAndView mv = new ModelAndView("joingame");
		mv.addObject("type", type);
		mv.addObject("name", name);
		mv.addObject("password", password);		
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		return mv;
	}
	
	@RequestMapping("/gamescreen")
	public ModelAndView showGameScreen(
			@RequestParam(value = "type", required = false) String type) {
		System.out.println("in controller - gamescreen");
		
		if (type != null && !type.isEmpty() && type.equals("endTurn")) {
			gameBoard.endTurn();
		}
		status = gameBoard.getStatus();
		moveHistory = gameBoard.getMoveHistory();
		ArrayList<String> cards = gameBoard.getCards();
		
		System.out.println(errorMessage);
		
		ModelAndView mv = new ModelAndView("gamescreen");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		mv.addObject("status", status);
		mv.addObject("moveHistory", moveHistory);
		mv.addObject("cards", cards);
		
		if (gameBoard.hasMoved())
			mv.addObject("allowMove", false);
		else
			mv.addObject("allowMove", true);
		if (!gameBoard.canSuggest())
			mv.addObject("allowSuggest", false);
		else
			mv.addObject("allowSuggest", true);
		return mv;
	}
	
	@RequestMapping("/disprove")
	public ModelAndView showDisprove() {
		System.out.println("in controller - disprove");
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("disprove");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		return mv;
	}
	
	@RequestMapping("/detectivenotebook")
	public ModelAndView showDetectiveNotebook() {
		System.out.println("in controller - detectivenotebook");
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("detectivenotebook");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		return mv;
	}
	
	@RequestMapping(value = "/accusesuggest", method = RequestMethod.POST)
	public ModelAndView accuseSuggest(
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "character", required = false) String character,
			@RequestParam(value = "weapon", required = false) String weapon,
			@RequestParam(value = "room", required = false) String room) {
		
		System.out.println("in controller - posted accusesuggest - " + type + " - " + Integer.parseInt(character) + " - " + Integer.parseInt(weapon) + " - " + Integer.parseInt(room));
		
		if (type != null && !type.isEmpty() && type.equals("Suggest")) {
			try {			
				gameBoard.suggest(Integer.parseInt(character),Integer.parseInt(weapon));	
			} catch (Exception e) {
				errorMessage = e.getMessage();
				
				System.out.println("in controller - posted accusesuggest - " + errorMessage);
				
				return showMovement();
			}
		} else {
			try {			
				if (gameBoard.accuse(Integer.parseInt(character),Integer.parseInt(weapon),Integer.parseInt(room))) {
					return showGameConclusion();
				}
			} catch (Exception e) {
				errorMessage = e.getMessage();
				
				System.out.println("in controller - posted accusesuggest - " + errorMessage);
				
				return showMovement();
			}
		}
		
		return showGameScreen("");
	}
	
	@RequestMapping("/accusesuggest")
	public ModelAndView showAccuseSuggest(
			@RequestParam(value = "type", required = false) String type) {
		System.out.println("in controller - accusesuggest");
		
		ArrayList<String> players = gameBoard.getPlayerCardOptions();
		ArrayList<String> weapons = gameBoard.getWeaponCardOptions();
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("accusesuggest");
		mv.addObject("type", type);
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		mv.addObject("players", players);
		mv.addObject("weapons", weapons);
		
		if (type != null && !type.isEmpty() && type.equals("Suggest")) {
			String currentPlace = gameBoard.getCurrentPlace();
			mv.addObject("currentPlace",currentPlace);
			mv.addObject("places", null);
		} else {
			ArrayList<String> places = gameBoard.getPlaceCardOptions();
			
			mv.addObject("currentPlace","");
			mv.addObject("places", places);
		}
		return mv;
	}
	
	@RequestMapping(value = "/movement", method = RequestMethod.POST)
	public ModelAndView move(
			@RequestParam(value = "location", required = false) String location) {
		System.out.println("in controller - posted move - " + Integer.parseInt(location));
		
		try {			
			gameBoard.move(Integer.parseInt(location));	
		} catch (Exception e) {
			errorMessage = e.getMessage();
			
			System.out.println("in controller - posted move - " + errorMessage);
			
			return showMovement();
		}
		
		return showGameScreen("");
	}
	
	@RequestMapping("/movement")
	public ModelAndView showMovement() {
		System.out.println("in controller - movement");
		
		ArrayList<String> options = gameBoard.getMoveOptions();
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("movement");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		mv.addObject("options", options);
		return mv;
	}
	
	@RequestMapping("/cardscreen")
	public ModelAndView showCardScreen() {
		System.out.println("in controller - cardscreen");
		
		ArrayList<String> cards = gameBoard.getCards();
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("cardscreen");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		mv.addObject("cards", cards);
		return mv;
	}
	
	@RequestMapping("/disproven")
	public ModelAndView showDisproven() {
		System.out.println("in controller - disproven");
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("disproven");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		return mv;
	}
	
	@RequestMapping("/gameconclusion")
	public ModelAndView showGameConclusion() {
		System.out.println("in controller - gameconclusion");
		
		ArrayList<String> casefile = gameBoard.getCaseFile();
		
		System.out.println(errorMessage);
 
		ModelAndView mv = new ModelAndView("gameconclusion");
		mv.addObject("errorMessage", errorMessage);
		errorMessage = "";
		mv.addObject("casefile", casefile);
		return mv;
	}
}