difference() {
    cube([45,71,4]);
    translate([0, 0, 2])
        cube([45, 10, 2]);
    translate([0, 71 - 10, 2])
        cube([45, 10, 2]);
};