package com.clueless;

import java.util.UUID;

public class Game {
	private String name;
	private String password;
	private String id;
	private clueLessModel gameBoard = null;
	
	public Game(String gameName, String gamePassword) {
		name = gameName;
		password = gamePassword;
		id = String.valueOf(UUID.randomUUID());
		
		setGameBoard();
	}
	public boolean login(String gameName, String gamePassword) {
		if (name.equals(gameName) && password.equals(gamePassword))
			return true;
		
		return false;
	}
	private void setGameBoard() {
		gameBoard = new clueLessModel();
	}
	public clueLessModel getGameBoard() {
		return gameBoard;
	}
	public void endGame() {
		if (gameBoard != null)
			gameBoard.endGame();
		gameBoard = null;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
}
