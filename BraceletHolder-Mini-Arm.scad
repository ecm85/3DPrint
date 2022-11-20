length = 40;
diameter = 40;
pillarHoleSide = 20;
notchWidth = diameter * .7;
notchHeight = notchWidth;
notchDepth = 5;

$fn = 20;
difference() {
    translate([0, diameter/2, diameter/2])
        rotate([0, 90, 0])
            cylinder(h = length, d = diameter);
    translate([length / 2 - pillarHoleSide/2, diameter / 2 - pillarHoleSide/2, 0])
        cube([pillarHoleSide, pillarHoleSide, 100]);
    translate([0, diameter * .3 * .5, diameter * .3])
        cube([notchDepth, notchWidth, notchHeight]);
    translate([length - notchDepth, diameter * .3 * .5, diameter * .3])
        cube([notchDepth, notchWidth, notchHeight]);
}