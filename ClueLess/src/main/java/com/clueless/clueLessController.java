package com.clueless;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class clueLessController {
	private String errorMessage;
	
	@RequestMapping("/mainmenu")
	public ModelAndView showMainMenu() {
		System.out.println("in controller - mainmenu");
 
		ModelAndView mv = new ModelAndView("mainmenu");
		return mv;
	}
	
	@RequestMapping("/gamerules")
	public ModelAndView showGameRules() {
		System.out.println("in controller - gamerules");
 
		ModelAndView mv = new ModelAndView("gamerules");
		return mv;
	}
	
	@RequestMapping("/creategame")
	public ModelAndView showCreateGame(
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "password", required = false) String password) {
		System.out.println("in controller - creategame");
 
		if (type != null && !type.isEmpty() && name != null && !name.isEmpty() && password != null && !password.isEmpty()) {
			ModelAndView mv = new ModelAndView("gamescreen");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("creategame");
			mv.addObject("type", type);
			mv.addObject("name", name);
			mv.addObject("password", password);
			mv.addObject("errorMessage", errorMessage);
			return mv;
		}
	}
	
	@RequestMapping("/joingame")
	public ModelAndView showJoinGame(
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "password", required = false) String password) {
		System.out.println("in controller - joingame");
 
		if (type != null && !type.isEmpty() && name != null && !name.isEmpty() && password != null && !password.isEmpty()) {
			ModelAndView mv = new ModelAndView("gamescreen");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("joingame");
			mv.addObject("type", type);
			mv.addObject("name", name);
			mv.addObject("password", password);		
			mv.addObject("errorMessage", errorMessage);
			return mv;
		}
	}
	
	@RequestMapping("/gamescreen")
	public ModelAndView showGameScreen() {
		System.out.println("in controller - gamescreen");
 
		ModelAndView mv = new ModelAndView("gamescreen");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/disprove")
	public ModelAndView showDisprove() {
		System.out.println("in controller - disprove");
 
		ModelAndView mv = new ModelAndView("disprove");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/detectivenotebook")
	public ModelAndView showDetectiveNotebook() {
		System.out.println("in controller - detectivenotebook");
 
		ModelAndView mv = new ModelAndView("detectivenotebook");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/accusesuggest")
	public ModelAndView showAccuseSuggest(
			@RequestParam(value = "type", required = false) String type) {
		System.out.println("in controller - accusesuggest");
 
		ModelAndView mv = new ModelAndView("accusesuggest");
		mv.addObject("type", type);
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/movement")
	public ModelAndView showMovement() {
		System.out.println("in controller - movement");
 
		ModelAndView mv = new ModelAndView("movement");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/cardscreen")
	public ModelAndView showCardScreen() {
		System.out.println("in controller - cardscreen");
 
		ModelAndView mv = new ModelAndView("cardscreen");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/disproven")
	public ModelAndView showDisproven() {
		System.out.println("in controller - disproven");
 
		ModelAndView mv = new ModelAndView("disproven");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
	
	@RequestMapping("/gameconclusion")
	public ModelAndView showGameConclusion() {
		System.out.println("in controller - gameconclusion");
 
		ModelAndView mv = new ModelAndView("gameconclusion");
		mv.addObject("errorMessage", errorMessage);
		return mv;
	}
}