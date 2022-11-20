length = 110;
diameter = 40;
pillarHoleSide = 20;
notchWidth = diameter * .7;
notchHeight = notchWidth;
notchDepth = 5;

$fn = 20;
union() {
    translate([0, diameter/2, diameter/2])
        rotate([0, 90, 0])
            cylinder(h = length, d = diameter);
    
    intersection() {
    translate([length, diameter * .3 * .5, diameter * .3])
        cube([notchDepth, notchWidth, notchHeight]);
    translate([0, diameter/2, diameter/2])
        rotate([0, 90, 0])
            cylinder(h = length + notchWidth, d = diameter);
    }
    
}