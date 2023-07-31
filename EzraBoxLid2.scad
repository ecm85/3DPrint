lipThickness = 2;
width = 152;
length = 195;
height = 3;
rimHeight = 5;
rimThickness = 2;
notchLength = 0;
//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1.5;
totalHeight = height + rimHeight;

totalLength = length + rimThickness * 2 + rimPadding;
echo(totalLength);
totalWidth = width + rimThickness * 2 + rimPadding;
difference() {

//////////////////////
//Old minkowski
//////////////////////
//    $fn=50;
//    minkowski()
//    {
//      cube([totalLength, totalWidth, height + rimHeight - 1]);
//      cylinder(r=2,h=1);
//    }
//    
//    translate([rimThickness, rimThickness, height])
//        minkowski()
//        {
//          cube([length + rimPadding, width + rimPadding, rimHeight - 1]);
//          cylinder(r=2,h=1);
//        }

//////////////////////////
////Good minkowski
//////////////////////////
    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([totalLength-4, totalWidth-4, height + rimHeight - 1]);
      cylinder(r=2,h=1);
    }
    
    translate([rimThickness, rimThickness, height])
        minkowski()
        {
          translate([2,2,0])
            cube([length + rimPadding-4, width + rimPadding-4, rimHeight - 1]);
          cylinder(r=2,h=1);
        }

////////////////////////
//No minkowski
////////////////////////        
//    cube([totalLength, totalWidth, height + rimHeight]);
//    
//    translate([rimThickness, rimThickness, height])
//        cube([length + rimPadding, width + rimPadding, rimHeight]);
    
        
    translate([totalLength/2 - notchLength/2, -2, 0])
        cube([notchLength, rimThickness + .01, totalHeight]);
    translate([totalLength/2 - notchLength/2, totalWidth-rimThickness + 1.99, 0])
        cube([notchLength, rimThickness + .01, totalHeight]);


    translate([-2, totalWidth/2 - notchLength/2, 0])
        cube([rimThickness + .01, notchLength, totalHeight]);
    translate([totalLength-rimThickness + 1.99, totalWidth/2 - notchLength/2, 0])
        cube([rimThickness + .01, notchLength, totalHeight]);
    
    translate([totalLength/2, totalWidth/2, height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
}
