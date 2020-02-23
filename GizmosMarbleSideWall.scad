include<GizmosMarbleHiddenTrackCore.scad>
washerDiameter = 16.25;
washerHeight = 1.4;
union() {

    difference() {
        union() {
            cube([length, 100, wallThickness]);
            translate([5, 0, wallThickness])
                cube([length - 5 * 2, 30, wallThickness]);
            
        }
        translate([length/2, sideCenterOfConnectorY - 30 + 1, wallThickness * 2 - washerHeight])
            cylinder(washerHeight, d=washerDiameter);
    }
    translate([0, (30 + 17 + diameter) - lidHeight, 0])
        cube([wallThickness, 100 - ((30 + 17 + diameter) - lidHeight), width/2 + wallThickness]);
    translate([length - wallThickness, (30 + 17 + diameter) - lidHeight, 0])
        cube([wallThickness, 100 - ((30 + 17 + diameter) - lidHeight), width/2 + wallThickness]);
}