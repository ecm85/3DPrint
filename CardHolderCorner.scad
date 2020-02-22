$fn=50;
union() {
    difference() {
        union() {
            cube([45,15,4]);
        };
        translate([0, 0, 2])
            cube([45, 10, 2]);
        translate([10, 6.25, 1])
            cylinder(r=2.5,h=3);
        translate([(45 - 10), 6.25, 1])
            cylinder(r=2.5,h=3);

    };
    translate([45,15,15]) {
        rotate([270,0,180]) {
            difference() {
                union() {
                    cube([45,15,4]);
                };
                translate([0, 0, 2])
                    cube([45, 10, 2]);
                translate([10, 6.75, 1])
                    cylinder(r=3.5,h=1);
                translate([(45 - 10), 6.75, 1])
                    cylinder(r=3.5,h=1);
            };
        };
    };
};