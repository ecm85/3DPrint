magnetDiameter = 7;
magnetHeight = 3.2;

hexDiameter = 44;
outerHexDiameterPadding = 17;
hexPileHeight = 19;
floorThickness = 3;

difference()
{
    
    cylinder(h=hexPileHeight + floorThickness, d=hexDiameter + outerHexDiameterPadding, $fn=6);
    translate([0, 0, floorThickness])
        cylinder(h=hexPileHeight, d=hexDiameter, $fn=6);

    translate([(hexDiameter)/2 + magnetDiameter/2 + .5, 0, hexPileHeight + floorThickness - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
    translate([-(hexDiameter)/2 -magnetDiameter/2 - .5, 0, hexPileHeight + floorThickness - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
    translate([-20, -35, 0])
        cube([(hexDiameter + outerHexDiameterPadding) / 2 + 10, outerHexDiameterPadding, hexPileHeight + floorThickness]);
        translate([-20, 19, 0])
        cube([(hexDiameter + outerHexDiameterPadding) / 2 + 10, outerHexDiameterPadding, hexPileHeight + floorThickness]);
 
}
    
   