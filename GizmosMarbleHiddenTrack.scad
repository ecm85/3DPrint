include<GizmosMarbleHiddenTrackCore.scad>
union()
    difference(){
        translate([0, wallThickness, 0])
            Track(true, true);
        translate([0,wallThickness,height - backstopHeight])
            cube([length,width,backstopHeight]);

    }
    difference() {
        translate([0, 0, 0])
            cube([length, wallThickness, height - backstopHeight]);
        translate([5, 0, height - (backstopHeight + 30)])
            cube([length - 10, wallThickness, 30]);
    }
    difference() {
        translate([0, width + wallThickness, 0])
            cube([length, wallThickness, height - backstopHeight]);
        translate([5, width + wallThickness, height - (backstopHeight + 30)])
            cube([length - 10, wallThickness, 30]);
    }

//    translate([wallThickness,wallThickness,height - backstopHeight])
//        cube([length,width,backstopHeight]);8
;