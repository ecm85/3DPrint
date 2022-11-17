width = 90;
length = 110;
height = 3;
magnetHoleWidth = 19;
floorThickness = 3;

//Based on magnet size:
pillarHeight = 43.5;
pillarSideLength = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

spaceBetweenCircles = 2;


difference() {
union(){
    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
   
    translate([length/2 - ((pillarSideLength)/2), width/2 - ((pillarSideLength)/2), 0])
        cube([pillarSideLength, pillarSideLength, pillarHeight]);
        

}
    translate([length/2,  width/2, pillarHeight - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

