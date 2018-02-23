magnetDiameter = 7;
magnetHeight = 3.2;

hexDiameter = 44.5;
outerHexDiameterPadding = 17;
hexPileHeight = 8;
floorThickness = 3;

Hex();
translate([33.299,19.4,0])
    rotate([0,0,120])
        Hex();
rotate([0,0,240])
    translate([-33.299,-19.4,0])
        Hex();
        
module Hex()
{
    rotate([0,0,60])
    {
        union()
        {
            difference()
            {
                
                cylinder(h=hexPileHeight + floorThickness, d=hexDiameter + outerHexDiameterPadding, $fn=6);
                translate([0, 0, floorThickness])
                    cylinder(h=hexPileHeight, d=hexDiameter, $fn=6);
                translate([-11,-30, 0])
                    cube([hexDiameter + outerHexDiameterPadding, hexDiameter + outerHexDiameterPadding, hexPileHeight + floorThickness]);
                translate([-20, -29, 0])
                    cube([10, 10, hexPileHeight + floorThickness]);
                translate([-20, 19, 0])
                    cube([10, 10, hexPileHeight + floorThickness]);
                translate([-(hexDiameter + outerHexDiameterPadding)/2 + 4.5,0, hexPileHeight + floorThickness - magnetHeight])
                    cylinder(h=magnetHeight, d=magnetDiameter);
            }
            translate([0, 0, 0])
                cylinder(h=floorThickness, d=hexDiameter, $fn=6);
        }
        
    }
}
