length = 110;
width = 110;
height = 3;

//Based on magnet size:
pillarSideLength = 18;
pillarSideOffset = .5;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;
pillarHeight = 15 * 4 + .5 + height;

difference() {
union(){
    cube([length, width, height]);


//----------------------------------


            
//---------------------------------------------------------------------
    
          

//----------------------------------------
   
    translate([length/2 - ((pillarSideLength)/2), width - (wallThickness + pillarSideLength), 0])
        cube([pillarSideLength, pillarSideLength, pillarHeight]);
        

}
    translate([length/2,  width - (wallThickness + magnetBaseInnerDiameter/2 + (pillarSideLength-magnetBaseInnerDiameter)/2), pillarHeight - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}
