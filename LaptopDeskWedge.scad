length = 18;
diameter = 18;
wallThickness = 3;
angle = 8;
floorThickness = 10;
height = 3;

width = 100;
translate([0, 0, 10])
rotate([0, 90, 0]) {
difference(){

 cube([length, width, height]);
 translate([0, 0, height])
    rotate([0, angle, 0])
        cube([length + 1, width, height]);
 }
    
}
rotate([0,15,0])
    cube([75, 15, height]);
cube([height, 15, 90]);
