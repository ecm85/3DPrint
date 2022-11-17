include<GizmosMarbleHiddenTrackCore.scad>
washerDiameter = 16.25;
washerHeight = 1.4;
union() {
translate([wallThickness, 0, 0])
union() {

    difference() {
        union() {
            cube([length, 100, wallThickness]);
            translate([5.5, 0, wallThickness])
                cube([length - 5 * 2 - 1, 30, wallThickness]);
            
        }
        translate([length/2, sideCenterOfConnectorY - 30 + 1, wallThickness * 2 - washerHeight])
            cylinder(washerHeight, d=washerDiameter);
    }
    
    translate([length - wallThickness, (30), 0])
        cube([wallThickness, 100 - 30, width/2 + wallThickness * 2]);
}
translate([0, 30, 0])
        cube([wallThickness, 100 - 30, width/2 + wallThickness * 2]);
}