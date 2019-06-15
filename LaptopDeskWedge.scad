length = 18;
diameter = 18;
wallThickness = 3;
angle = 8;
floorThickness = 10;
height = 3;

width = 100;


difference(){
 cube([length, width, height]);
 translate([0, 0, height])
    rotate([0, angle, 0])
        cube([length + 1, width, height]);
    
    
}
