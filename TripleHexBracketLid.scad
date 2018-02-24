magnetDiameter = 9;
magnetHeight = .9;

hexDiameter = 44.5 + 17 + 1;
outerHexDiameterPadding = 3;
hexPileHeight = 3;
floorThickness = 2;
rimHeight = 3;

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
                    cube([10, 2, hexPileHeight + floorThickness]);
                      translate([-20, 27, 0])
                    cube([10, 10, hexPileHeight + floorThickness]);
                  translate([-(hexDiameter + outerHexDiameterPadding)/2 + 8.5,0, floorThickness - magnetHeight])
                    cylinder(h=magnetHeight, d=magnetDiameter);
            }
      
            difference()
            {
                translate([0, 0, 0])
                    cylinder(h=floorThickness, d=hexDiameter, $fn=6);
                translate([-(hexDiameter + outerHexDiameterPadding)/2 + 8.5,0, floorThickness - magnetHeight])
                    cylinder(h=magnetHeight, d=magnetDiameter);
            }
          
        }
        
    }
}
