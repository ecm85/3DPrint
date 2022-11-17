length = 55;
width = 16;
height = 36;
floorThickness = 2;
wallThickness = 1.5;

difference() {    
    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
    
    //cube([length, width, height]);
    translate([wallThickness, wallThickness, floorThickness])
        cube([length - wallThickness * 2, width - wallThickness * 2, height - floorThickness]);
}
