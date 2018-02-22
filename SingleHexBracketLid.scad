//TODO: Get this diameter
magnetDiameter = 8;
//TODO: Get this height
magnetHeight = .5;

hexDiameter = 44;
outerHexDiameterPadding = 17;
hexPileHeight = 3;
floorThickness = 2;
actualDiameter = hexDiameter + outerHexDiameterPadding;
actualOuterHexDiameterPadding = 2;

difference()
{
    
    cylinder(h=hexPileHeight + floorThickness, d=actualDiameter + actualOuterHexDiameterPadding, $fn=6);
    translate([0, 0, floorThickness])
        cylinder(h=hexPileHeight, d=actualDiameter, $fn=6);
    translate([(hexDiameter)/2 + magnetDiameter/2 - 1, 0, floorThickness - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);  
    translate([-(hexDiameter)/2 -magnetDiameter/2 + 1, 0, floorThickness - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
    translate([-25, -35, 0])
        cube([(hexDiameter + outerHexDiameterPadding) / 2 + 20, outerHexDiameterPadding, hexPileHeight + floorThickness]);
    translate([-25, 19, 0])
        cube([(hexDiameter + outerHexDiameterPadding) / 2 + 20, outerHexDiameterPadding, hexPileHeight + floorThickness]);
 
}
    
 
       