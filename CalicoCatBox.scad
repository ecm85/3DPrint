magnetHoleWidth = 19;
width = 90;
length = 110;
height = 20;
wallThickness = 3;
floorThickness = 3;

difference() {
    union() {
        difference() {

            $fn=50;
            minkowski()
            {
              translate([2,2,0])
                cube([length-4, width-4, height - 1]);
              cylinder(r=2,h=1);
            }
            translate([wallThickness, wallThickness, floorThickness])
                cube([length - wallThickness * 2, width - wallThickness * 2, height]);
        }
        difference() {
            translate([length/2 - (magnetHoleWidth + wallThickness * 2)/2, width/2 - (magnetHoleWidth + wallThickness * 2)/2, 0])
                cube([magnetHoleWidth + wallThickness * 2, magnetHoleWidth + wallThickness * 2, height]);
            translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
                cube([magnetHoleWidth, magnetHoleWidth, height]);
        }
        translate([0, width/2, 0])
            cube([length, wallThickness, height]);
        translate([length/2, 0, 0])
            cube([wallThickness, width/2, height]);
        translate([length/2 - (magnetHoleWidth + 2 * wallThickness)/2 - wallThickness * 2, width/2, 0])
            cube([wallThickness, width/2, height]);
        translate([length/2 + (magnetHoleWidth)/2 + wallThickness * 2, width/2, 0])
            cube([wallThickness, width/2, height]);
    }
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, 200]);
}