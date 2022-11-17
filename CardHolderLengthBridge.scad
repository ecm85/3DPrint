length = 75;
width = 45;
height = 3;
lipHeight = 1;
lipLength = 10;
protrusionHeight = 1;
protrusionRadius = 4.2;
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
        translate([protrusionWidthOffset, protrusionLengthOffset, lipHeight])
            cylinder(r=protrusionRadius, h=protrusionHeight);
        translate([(width - protrusionWidthOffset), protrusionLengthOffset, lipHeight])
            cylinder(r=protrusionRadius, h=protrusionHeight);
        translate([protrusionWidthOffset, length - protrusionLengthOffset, lipHeight])
            cylinder(r=protrusionRadius, h=protrusionHeight);
        translate([(width - protrusionWidthOffset), length - protrusionLengthOffset, lipHeight])
            cylinder(r=protrusionRadius, h=protrusionHeight);
    };
};
