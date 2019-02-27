length = 142;
diameter = 18;
wallThickness = 2;
angle = 5;
floorThickness = 3;
height = diameter + floorThickness + 3;

difference(){
 cube([length, wallThickness * 2 + diameter, height]);
 translate([0, 0, height])
    rotate([0, angle, 0])
        cube([length + 1, diameter + wallThickness * 2, height]);
    
    translate([-1, diameter/2 + wallThickness, height])
        rotate([90 + angle, 0, 90])
            cylinder(length - 1, d=diameter);
}