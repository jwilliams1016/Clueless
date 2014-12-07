package com.clueless;

public class Location {
		String name;
		Location[] adjacent = new Location[4];
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
