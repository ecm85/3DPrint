length = 61.5;
width = 115;
height = 3;

//Based on magnet size:
pillarSideLength = 18;
pillarSideOffset = .5;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//inox guard x 6, 47.87 x 31.97, base 29.36
//bandit guard x 6, 36.67 x 27.75, base 24.43
//city guard x 6, 38.45 x 24.02, base 21.30
//single token 2.0

magnetOffset = 49.37;


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

