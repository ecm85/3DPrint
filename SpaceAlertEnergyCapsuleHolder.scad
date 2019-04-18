//one energy cylinder:
//diameter 6.97
//height  13.83

cylinderDiameter = 6.97 + .4;
cylinderHeight = 13.83;
floorThickness = 3;
wallThickness = 3;
length = 25;
echo (length);
width = 10;
height = floorThickness + cylinderHeight * .4;

difference()
{
    $fn=50;
    minkowski()
    {
      cube([length, width, height]);
      cylinder(r=2,h=1);
    }

    translate([length/2, width/2, floorThickness])
        cylinder(cylinderHeight, d=cylinderDiameter);
    translate([wallThickness, width/2, floorThickness])
        cylinder(cylinderHeight, d=cylinderDiameter);
    translate([length - wallThickness, width/2, floorThickness])
        cylinder(cylinderHeight, d=cylinderDiameter);
}