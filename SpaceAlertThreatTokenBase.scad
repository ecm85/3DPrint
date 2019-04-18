include<SpaceAlertThreatTokensLib.scad>


length = 71.92;
width = 69.72;
height = 3;

//Based on magnet size:
pillarSideLength = 18;
pillarSideOffset = .5;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;
pillarHeight =  7.84 * 3 + .5 + height;

difference() {
union(){
    $fn=50;
    minkowski()
    {
      cube([length, width, height - 1]);
      cylinder(r=2,h=1);
    }

//    cube([length, width, height]);

//----------------------------------


            
//---------------------------------------------------------------------
    
          

//----------------------------------------
   
    translate([length/2 - ((pillarSideLength)/2), width/2 - ((pillarSideLength)/2), 0])
        cube([pillarSideLength, pillarSideLength, pillarHeight]);
        

}
    translate([length/2,  width/2, pillarHeight - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

