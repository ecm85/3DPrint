lipHeight = 3;
lipLength = 10;
height = 6;
length = lipLength + height + 10;
width = 65;
protrusionHeight = 2;
protrusionRadius = 4.2;
protrusionWidthOffset = width / 3;
protrusionLengthOffset = lipLength / 2;

Side();
translate([width, length, length])
    rotate([90, 180, 0])
        Side();

module Side() {
    $fn=6;
    union() {
        difference() {
            cube([width, length, height]);
            translate([0, 0, height - lipHeight])
                cube([width, lipLength, lipHeight]);
            translate([protrusionWidthOffset, protrusionLengthOffset, height - (lipHeight + protrusionHeight)])
                cylinder(r=protrusionRadius, h=protrusionHeight);
            translate([(width - protrusionWidthOffset), protrusionLengthOffset, height - (lipHeight + protrusionHeight)])
                cylinder(r=protrusionRadius, h=protrusionHeight);
        };        
    };
}
