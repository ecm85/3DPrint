union() {
    difference() {
        union() {
            cube([45,15,4]);
        };
        translate([0, 0, 2])
            cube([45, 10, 2]);
    };
    translate([45,15,15]) {
        rotate([270,0,180]) {
            difference() {
                union() {
                    cube([45,15,4]);
                };
                translate([0, 0, 2])
                    cube([45, 10, 2]);
            };
        };
    };
};