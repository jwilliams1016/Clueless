package com.clueless;

public class BillardRoom extends Location {
		public BillardRoom (String name) {
			super(name);
		}//end constructor
		public void setMoveOptions(Location option1, Location option2, Location option3, Location option4) {
			adjacent[0] = option1;
			adjacent[1] = option2;
			adjacent[2] = option3;
			adjacent[3] = option4;
		}//end setToMoveOptions()
}//end BillardRoom class
