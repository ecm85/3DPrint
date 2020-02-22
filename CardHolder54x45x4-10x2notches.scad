difference() {
    cube([45,54,4]);
    translate([0, 0, 2])
        cube([45, 10, 2]);
    translate([0, 54 - 10, 2])
        cube([45, 10, 2]);
};