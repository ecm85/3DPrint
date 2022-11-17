magnetBaseInnerDiameter = 15.4 + .3; //since sideways
magnetHeight = 4.0;
length = 100;
height = 6;
width = 30;
markerDiameter = 10.6; //TODO

union() {
    difference() {
        cube([length, width, height]);
        translate([length * .25, 15, height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        translate([length * .75, 15, height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    }
    difference() {
        rotate([0, 0, 0])
            translate([0, width, 0])
                cube([length, markerDiameter, height + markerDiameter]);
        translate([0, width - 2, height + markerDiameter/2])
            rotate([0, 90, 0])
                cylinder(length, d=markerDiameter);
    }

//    translate([0, width, -5])
//        rotate([60, 0, 0])
//            cube([length, markerDiameter, 20]);

}