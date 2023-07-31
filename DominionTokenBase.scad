width = 39;
length = 136;
height = 3;
floorThickness = 3;

//Based on magnet size:
pillarHeight = 105 - floorThickness;
pillarSideLength = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

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

