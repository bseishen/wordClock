/*
wordClock hole pattern for CNC.
*/
thickness = 12.7;
xOffset = 40;
yOffset = 40;
xSpaceing = 18;
ySpaceing = 31;
lightCavityDepth =7; 
W = 15;
L = 18;
 
 
difference()
{
	translate([0,0,0]) {
		cube([292.1, 292.1, thickness]);
	}

	for ( x = [0:12] ) {
		for ( y = [0:7] ) {
			//cut light cavity
     	 	translate([((x*xSpaceing)+xOffset-(W/2)), ((y*ySpaceing)+yOffset-(L/2)), (thickness-lightCavityDepth)]) {
         	cube (size = [W,L,lightCavityDepth+1], center = false);
		 	}
			//Cut circle for LED
			translate([(x*xSpaceing)+xOffset, (y*ySpaceing)+yOffset, 0]) {
				cylinder (h = thickness, r=5, center = false);
      	}
   	}
	}
}