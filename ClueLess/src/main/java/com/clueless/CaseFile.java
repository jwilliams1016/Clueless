package com.clueless;

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
