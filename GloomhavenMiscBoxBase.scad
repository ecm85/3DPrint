length = 65;
width = 115;
height = 3;

//Based on magnet size:
pillarSideLength = 18;
pillarSideOffset = .5;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;


magnetOffset = 52.5;


spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;
pillarHeight = 15 * 3 + .5 + height;

difference() {
union(){
    cube([length, width, height]);


//----------------------------------


            
//---------------------------------------------------------------------
    
          

//----------------------------------------
   
    translate([length/2 - ((pillarSideLength)/2), magnetOffset + wallThickness * 2 + pillarSideOffset, 0])
        cube([pillarSideLength, pillarSideLength, pillarHeight]);
        

}
    translate([length/2,  magnetOffset + wallThickness * 2 + magnetBaseInnerDiameter/2 + (pillarSideLength -magnetBaseInnerDiameter )/2 + pillarSideOffset, pillarHeight - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

