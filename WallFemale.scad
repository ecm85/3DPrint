lipHeight = 3;
lipLength = 10;
height = 6;
//length = height + 10 * 2 + lipLength * 2;
length = 100;
width = 65;
protrusionHeight = 2;
protrusionRadius = 4 + .2;
protrusionWidthOffset = width / 3;
protrusionLengthOffset = lipLength / 2;

$fn=6;
union() {
    difference() {
        cube([width, length, height]);
        translate([0, 0, height - lipHeight])
            cube([width, lipLength, lipHeight]);
        translate([0, length - lipLength, height - lipHeight])
            cube([width, lipLength, lipHeight]);
        translate([protrusionWidthOffset, protrusionLengthOffset, height - (lipHeight + protrusionHeight)])
            cylinder(r=protrusionRadius, h=protrusionHeight);
        translate([(width - protrusionWidthOffset), protrusionLengthOffset, height - (lipHeight + protrusionHeight)])
            cylinder(r=protrusionRadius, h=protrusionHeight);
        translate([protrusionWidthOffset, length - protrusionLengthOffset, height - (lipHeight + protrusionHeight)])
            cylinder(r=protrusionRadius, h=protrusionHeight);
        translate([(width - protrusionWidthOffset), length - protrusionLengthOffset, height - (lipHeight + protrusionHeight)])
            cylinder(r=protrusionRadius, h=protrusionHeight);
//        translate([0, length / 2 - height / 2, height - lipHeight])
//            cube([width, height, lipHeight]);
    };
};
