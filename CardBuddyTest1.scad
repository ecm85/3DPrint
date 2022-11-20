length = 125;
width = 30;
height = 8; 
sectionWidth = 10;
sectionHeight = 8;
lipWidth = 10;
lipHeight = 3;
connectorFemaleDiameter = 4;
connectorFemaleHeight = 2;
connectorLengthOffset = 5;
connectorWidthOffset = lipWidth / 2 - connectorFemaleDiameter;

$fn = 6;
difference() {
    union() {
        cube([length, lipWidth, lipHeight]);
        translate([0, lipWidth, 0]){
            translate([0, sectionWidth * 2, 0])
                Section(sectionHeight * 1);
            translate([0, sectionWidth * 1, 0])
                Section(sectionHeight * 2);
            translate([0, sectionWidth * 0, 0])
                Section(sectionHeight * 3);    
        }
    }
    translate([connectorFemaleDiameter + connectorLengthOffset, connectorFemaleDiameter + connectorWidthOffset, lipHeight - connectorFemaleHeight])
        cylinder(h = connectorFemaleHeight, r = connectorFemaleDiameter);
    translate([length - (connectorFemaleDiameter + connectorLengthOffset), connectorFemaleDiameter + connectorWidthOffset, lipHeight - connectorFemaleHeight])
        cylinder(h = connectorFemaleHeight, r = connectorFemaleDiameter);
}
module Section(sectionHeight)
{
    difference() {
        cube([length, sectionWidth, sectionHeight]);
        translate([0, 5, (sectionHeight - height) + 1])
            rotate([10, 0, 0])
                cube([length, 2, height]);
    }
}
