lipWidth = 10;
width = lipWidth;
height = 2;
connectorFemaleDiameter = 4;
connectorFemaleHeight = 2;
maleToFemaleDiff = 0;
maleToFemaleOffset = maleToFemaleDiff / 2;
connectorMaleDiameter = connectorFemaleDiameter - maleToFemaleDiff;
connectorMaleHeight = connectorFemaleHeight;
connectorLengthOffset = 5;
length = (connectorFemaleDiameter * 2 + connectorLengthOffset) + .5;
connectorWidthOffset = width / 2;

translate([length, 0, 0])
    HalfConnector();
translate([length, width])
    rotate([0, 0, 180])
        HalfConnector();

module HalfConnector()
{
    $fn = 6;
    union() {
        cube([length, width, height]);
        translate([connectorMaleDiameter + connectorLengthOffset + maleToFemaleOffset, connectorWidthOffset, height])
            cylinder(h = connectorMaleHeight, r = connectorMaleDiameter);
    }
}