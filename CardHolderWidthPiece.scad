union() {
    difference() {
        cube([45,98,4]);
        translate([0, 0, 2])
            cube([45, 10, 2]);
        translate([0, 98 - 10, 2])
            cube([45, 10, 2]);
    };
    $fn=50;
    translate([10, 4, 0])
        cylinder(r=2,h=3);
    translate([(45 - 10), 4, 0])
        cylinder(r=2,h=3);
    translate([10, 98 - 4, 0])
        cylinder(r=2,h=3);
    translate([(45 - 10), 98 - 4, 0])
        cylinder(r=2,h=3);
};