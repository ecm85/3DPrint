length = 167;
rimThickness = 2;
rimPadding = 1.5;
magnetHoleWidth = 19;
wallThickness = 3;
floorThickness = 1;
width = 59 - (rimThickness * 2 + rimPadding);
height = 23;

difference() {

    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
    translate([wallThickness,wallThickness,floorThickness])
        cube([length/2 - (wallThickness * 2 + magnetHoleWidth/2), width - (wallThickness * 2), height - floorThickness]);
    translate([wallThickness + length/2 + magnetHoleWidth/2,wallThickness,floorThickness])
        cube([length/2 - (wallThickness * 2 + magnetHoleWidth/2), width - (wallThickness * 2), height - floorThickness]);
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}