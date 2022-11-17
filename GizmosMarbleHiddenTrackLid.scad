include<GizmosMarbleHiddenTrackCore.scad>
lipHeight = 10;
openingLength = diameter;
    difference() {
        cube([(length - wallThickness), width - wallThickness *2, 17 + diameter]);
        rotate([-15, -3, 0])
            translate([0, 0, 15])
                cube([length - (wallThickness) - 1, (width - wallThickness * 2) / 2, 17 + diameter]);
        rotate([15, -3, 0])
            translate([0, ((width - wallThickness*2) / 2) - 1, -11.5])
                cube([length - (wallThickness) - 1, (width - wallThickness * 2) / 2, 17 + diameter]);
        translate([0, (width - wallThickness * 2) / 2 - openingLength/2, 0])
            cube([length - wallThickness * 2, openingLength, 17 + diameter]);

//        cube([lidHeight, width - wallThickness, lipHeight]);
    }

 