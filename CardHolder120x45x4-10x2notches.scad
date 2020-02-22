difference() {
    cube([45,120,4]);
    translate([0, 0, 2])
        cube([45, 10, 2]);
    translate([0, 120 - 10, 2])
        cube([45, 10, 2]);
};