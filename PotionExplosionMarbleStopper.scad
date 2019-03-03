diameter = 18;
wallThickness = 3;
length = (diameter + wallThickness * 2) * 5 + (wallThickness * 3);
echo(length);
angle = 23;
height = 10;
width = 25;
difference() {
    union() {
            difference(){

                    cube([length, width, height]);
                    
                    translate([0, 0, height])
                        rotate([-angle, 0, 0])
                            cube([length + 1, width + 2, height]);
                
             
        }
        translate([0,0,0])
            cube([wallThickness * 2, width, height]);
        translate([length - (wallThickness * 2),0,0])
            cube([wallThickness * 2, width, height]);
    }
    translate([wallThickness, wallThickness,0])
        cube([wallThickness, width - wallThickness, height]);
    translate([length - (wallThickness * 2), wallThickness,0])
        cube([wallThickness, width - wallThickness, height]);
}