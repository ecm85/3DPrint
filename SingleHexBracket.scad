magnetDiameter = 6.3;
magnetHeight = 3.2;

hexDiameter = 55;
outerHexDiameterPadding = 16;
hexPileHeight = 18.5;
floorThickness = 3;

difference()
{
    
    cylinder(h=hexPileHeight + floorThickness, d=hexDiameter + outerHexDiameterPadding, $fn=6);
    translate([0, 0, floorThickness])
        cylinder(h=hexPileHeight, d=hexDiameter, $fn=6);
    translate([-hexDiameter/4, -(hexDiameter + outerHexDiameterPadding)/2, floorThickness])
        cube([hexDiameter/2, hexDiameter + outerHexDiameterPadding, hexPileHeight]);
    translate([(hexDiameter)/2 + magnetDiameter/2 + .5, 0, hexPileHeight + floorThickness - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
    translate([-(hexDiameter)/2 -magnetDiameter/2 - .5, 0, hexPileHeight + floorThickness - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
}
