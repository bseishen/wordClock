include <../configuration.scad>;
$fn=24;

module LEDBoard(){
	translate([-BoardWidth/2,-BoardLength/2,0])
	difference(){
		cube([BoardWidth, BoardLength, BoardThickness]);
		for( y=[0:LightRows-1] ){
			translate([LightTrim,LightTrim+y*(CavityLength+(BoardLength-2*LightTrim-LightRows*CavityLength)/(LightRows-1)),0]){
				for( x=[0:LightCols-1] ){
					translate([x*(CavityWidth+(BoardWidth-2*LightTrim-LightCols*CavityWidth)/(LightCols-1)),0,CavityBottomThickness])
					cube([CavityWidth, CavityLength, BoardThickness]);
					translate([x*(BoardWidth-2*LightTrim-CavityWidth)/(LightCols-1)+CavityWidth/2,CavityLength/2,-0.5])
					cylinder( h=BoardThickness+1, r=LEDRadius );
				}
			}
		}
	}
}

LEDBoard();
