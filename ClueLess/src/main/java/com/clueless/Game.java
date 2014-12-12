package com.clueless;

public class Game {
	String name;
	String password;
	
	public Game(String gameName, String gamePassword) {
		name = gameName;
		password = gamePassword;
	}
	public boolean login(String gameName, String gamePassword) {
		if (name.equals(gameName) && password.equals(gamePassword))
			return true;
		
		return false;
	}
}
