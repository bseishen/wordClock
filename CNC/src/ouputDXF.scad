include <ledBoard.scad>
projection(cut=true){
	translate([0, 0, -5]){
		LEDBoard();
	}
}