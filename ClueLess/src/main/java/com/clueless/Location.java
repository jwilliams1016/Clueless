package com.clueless;

public class Location {
		String name;
		String codename;
		Location[] adjacent = new Location[4];
		boolean occupied = false;
		Player[] occupants = new Player[6];
		Player[] temp = new Player[6];
		int playerCount = 0;
		public Location(String name, String codename) {
			this.name = name;
			this.codename = codename;
		}//end constructor
		public void setOccupied(boolean occupied) {
			this.occupied = occupied;
		}//end setOccupied()
		public boolean isOccupied() {
			return occupied;
		}//end isOccupied()
		public void setOccupant(Player newOccupant) {
			occupants[playerCount] = newOccupant;
			playerCount++;
			this.setOccupied(true);
		}//end setOccupied()
		public void removeOccupant(Player remove, Location spot) {
			for (int x = 0; x < occupants.length; x++) {
				if (occupants[x] == remove){
					occupants[x] = null;
					playerCount--;
				}//end if
			}//end for
			int count = 0;
			temp[0] = null;
			temp[1] = null;
			temp[2] = null;
			temp[3] = null;
			temp[4] = null;
			temp[5] = null;
			for (Player a: occupants){
				if (a != null) {
					temp[count] = a;
					count++;
				}//end if
			}//end for
			occupants = temp;
			if (occupants[0] == null){
				this.setOccupied(false);
				spot.occupied = false;
				playerCount = 0;
			}//end if
		}//end removeOccupant()
		public Location[] moveOptions(){
			if(adjacent[0] == null){
				System.out.println("All possible move locations are occupied hallways");
			}//end if
			return adjacent;
		}//end moveOptions()
		public void setMoveOptions(Location option1, Location option2) {
			adjacent[0] = null;
			adjacent[1] = null;
			adjacent[2] = null;
			adjacent[3] = null;
			adjacent[0] = option1;
			adjacent[1] = option2;
		}//end setToMoveOptions()
		public void printOccupants(){
			if (occupants[0] == null) {
				System.out.print(name + " is currently unoccupied");
				occupied = false;
			}//end if
			else {
				System.out.print(name + " is currently occupied by: ");
				for(Player x: occupants){
					if (x != null)
						System.out.print(x.name + "\t");
				}//end for
			}//end else
			System.out.println();
		}//end printOccupant()
	}//end Location class
