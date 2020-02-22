$fn=50;
union() {
    difference() {
        cube([45,53,4]);
        translate([0, 0, 2])
            cube([45, 10, 2]);
        translate([0, 53 - 10, 2])
            cube([45, 10, 2]);
        translate([10, 6.25, 1])
            cylinder(r=2.5,h=3);
        translate([(45 - 10), 6.25, 1])
            cylinder(r=2.5,h=3);
        translate([10, 53 - 6.25, 1])
            cylinder(r=2.5,h=3);
        translate([(45 - 10), 53 - 6.25, 1])
            cylinder(r=2.5,h=3);
    };
};