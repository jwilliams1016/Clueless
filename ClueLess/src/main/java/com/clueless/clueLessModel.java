package com.clueless;

public class clueLessModel {
	public clueLessModel(){
		//haven't decided if I need anything here yet?
	}//end constructor
	public class Location {
		String name;
		Location[] adjacent;
		boolean occupied = false;
		Player occupant;
		public Location(String name) {
			this.name = name;
		}//end constructor
		public void setOccupied(boolean occupied) {
			this.occupied = occupied;
		}//end setOccupied()
		public boolean isOccupied() {
			return occupied;
		}//end isOccupied()
		public void setOccupant(Player occupant) {
			this.occupant = occupant;
			this.setOccupied(true);
		}//end setOccupied()
		public Location[] moveOptions(){
			return adjacent;
		}//end moveOptions()
		public void setMoveOptions(Location option1, Location option2) {
			adjacent[0] = option1;
			adjacent[1] = option2;
		}//end setToMoveOptions()
	}//end Location class
	public class Room extends Location {
		public Room (String name) {
			super(name);
		}//end constructor
		public void setMoveOptions(Location option1, Location option2, Location secretPassage) {
			adjacent[0] = option1;
			adjacent[1] = option2;
			adjacent[2] = secretPassage;
		}//end setToMoveOptions()
	}//end Room class
	public class Weapon {
		String name;
		Location location;
		public Weapon(String name, Location initialLocation) {
			this.name = name;
			location = initialLocation;
		}//end constructor
		public void move(Location newLocation) {
			this.location = newLocation;
		}//end move()
	}//end Weapon class
	public class Player {
		String name;
		Card location;
		Card[] cards;
		boolean suggestionMadeHere;
		boolean hasTurn;
		Card[] suggestion = new Card[3];
		Card[] accusation = new Card[3];
		public Player(String name, Card initialLocation) {
			this.name = name;
			location = initialLocation;
		}//end constructor
		public void move(Card newLocation) {
			if(hasTurn) {
				location = newLocation;
				suggestionMadeHere = false;
			}//end if
			else
				System.out.println("You cannot move because it is not your turn.");
		}//end move()
		public void endTurn() {
			hasTurn = false;
		}//end endTurn()
		public void makeSuggestion(Card player, Card weapon) {
			if(hasTurn) {
				suggestion[0] = player;
				suggestion[1] = weapon;
				suggestion[2] = getLocation();
				suggestionMadeHere = true;
			}//end if
			else
				System.out.println("You cannot make a suggestion because it is not your turn.");
		}//end makeSuggestion()
		public void makeAccusation(Card accusedPlayer, Card accusedWeapon, Card accusedLocation) {
			if(hasTurn) {
				accusation[0] = accusedPlayer;
				accusation[1] = accusedWeapon;
				accusation[2] = accusedLocation;
			}//end if
			else
				System.out.println("You cannot make an accusation because it is not your turn.");
		}//end makeAccusation()
		public Card[] proveOrDisproveSuggestion(Card[] attemptedSuggestion) {
			Card[] matches = new Card[3];
			for (int i = 0; i < attemptedSuggestion.length; i++) {
				for (int n = 0; n < cards.length; n++) {
					if (attemptedSuggestion[i] == cards[n]) {
						matches[i] = attemptedSuggestion[i];
					}//end if
				}//end for
			}//end for
			if ((matches[0] == null) && (matches[1] == null) && (matches[2] == null))
				System.out.println("Player " + name + " cannot disprove the suggestion");
			return matches;
		}//end proveOrDisproveSuggestion()
		public Card[] proveOrDisproveAccusation(Card[] attemptedAccusation) {
			Card[] matches = new Card[3];
			for (int i = 0; i < attemptedAccusation.length; i++) {
				for (int n = 0; n < cards.length; n++) {
					if (attemptedAccusation[i] == cards[n]) {
						matches[i] = attemptedAccusation[i];
					}//end if
				}//end for
			}//end for
			if ((matches[0] == null) && (matches[1] == null) && (matches[2] == null))
				System.out.println("Player " + name + " cannot disprove the accusation");
			return matches;
		}//end proveOrDisproveSuggestion()
		public Card getLocation() {
			return location;
		}//end getLocation()
		public void disable() {
			if (hasTurn)
				endTurn();
			hasTurn = false;
		}//end disable()
	}//end Player class
	public enum CardType {
		PLAYER,
		WEAPON,
		ROOM
	}//end CardType enum
	public class Card {
		String name;
		CardType type;
		public Card(String name, CardType type) {
			this.name = name;
			this.type = type;
		}//end constructor
	}//end Card class
	public class CaseFile {
		Card player;
		Card weapon;
		Card room;
		public CaseFile(Card player, Card weapon, Card room) {
			this.player = player;
			this.weapon = weapon;
			this.room = room;
		}//end CaseFile
		public Card[] reveal() {
			Card[] caseFile = {player, weapon, room};
			return caseFile;
		}//end reveal()
	}//end CaseFile class
}//end cluesLessModel class
