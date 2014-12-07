package com.clueless;

public class Room extends Location {
		public Room (String name) {
			super(name);
		}//end constructor
		public void setMoveOptions(Location option1, Location option2, Location option3) {
			adjacent[0] = option1;
			adjacent[1] = option2;
			adjacent[2] = option3;
		}//end setToMoveOptions()
	}//end Room class
