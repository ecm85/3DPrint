include<GizmosMarbleHiddenTrackCore.scad>
lipHeight = 10;
openingLength = diameter;
    difference() {
        cube([(length - wallThickness), width - wallThickness *2, 17 + diameter]);
        rotate([-10, -3, 0])
            translate([0, 0, 10])
                cube([length - (wallThickness) - 1, (width - wallThickness * 2) / 2, 17 + diameter]);
        rotate([10, -3, 0])
            translate([0, ((width - wallThickness*2) / 2) - 1, -7.45])
                cube([length - (wallThickness) - 1, (width - wallThickness * 2) / 2, 17 + diameter]);
        translate([0, (width - wallThickness * 2) / 2 - openingLength/2, 0])
            cube([openingLength, openingLength, 17 + diameter]);

//        cube([lidHeight, width - wallThickness, lipHeight]);
    }

 