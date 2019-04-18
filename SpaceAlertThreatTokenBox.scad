/*
current box: 29.1 height, 137.19x115.53
*/

include<SpaceAlertThreatTokensLib.scad>
fingerNotchLength = 10;
fingerNotchHeight = 1;
floorThickness = 3;
height = threatTokenPileHeight(2) + floorThickness;
echo("height: ",height);
wallThickness = 2;
actualWallThickness = 2;
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;
length = singleThreatTokenPileLength * 2 + wallThickness * 6 + (fingerNotchLength * 2) + magnetBaseInnerDiameter;
width = singleThreatTokenPileWidth * 4 + actualWallThickness * 3 + wallThickness * 2;
echo("length",length);
echo ("width",width);


difference() {
    
    
    $fn=50;
    minkowski()
    {
      cube([length, width, height - 1]);
      cylinder(r=2,h=1);
    }
    for(a=[1,2.5,4])
        translate([fingerNotchLength + wallThickness, a * width/5 - (singleThreatTokenPileWidth)/2 - wallThickness, 0])
            LeftThreatTokenPile(wallThickness, height, 2);
    
    translate([wallThickness, wallThickness, fingerNotchHeight])
        cube([fingerNotchLength, width - wallThickness * 2, height - fingerNotchHeight]);
        
    for(a=[1,2.5,4])
        translate([length - (singleThreatTokenPileLength + wallThickness * 2), a * width/5 - (singleThreatTokenPileWidth)/2 - wallThickness, 0])
            LeftThreatTokenPile(wallThickness, height, 2);

    translate([length - (singleThreatTokenPileLength + wallThickness * 2) - fingerNotchLength, wallThickness, fingerNotchHeight])
        cube([fingerNotchLength, width - wallThickness * 2, height - fingerNotchHeight]);

  
    translate([length/2 - magnetBaseInnerDiameter/2, width/2 - magnetBaseInnerDiameter/2, 0])
        cube([magnetBaseInnerDiameter, magnetBaseInnerDiameter, height]);
    
    
    
//    translate([100 - (15.05 + .8), 0, 0])

}