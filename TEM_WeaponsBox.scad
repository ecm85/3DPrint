length1 = 20;
length2 = 15;
width1 = 100;
width2 = 75;
height = 18;
floorThickness = 2;
wallThickness = 1.5;
difference() {
    union() {
        difference() {    
            $fn=50;
            minkowski()
            {
              translate([2,2,0])
                cube([length1-4, width1-4, height - 1]);
              cylinder(r=2,h=1);
            }
            
            //cube([length, width, height]);
            translate([wallThickness, wallThickness, floorThickness])
                cube([length1 - wallThickness * 2, width1 - wallThickness * 2, height - floorThickness]);
        }
        translate([0, length2, 0]) {
            rotate([0, 0, 270]) {
                difference() {    
                    $fn=50;
                    minkowski()
                    {
                      translate([2,2,0])
                        cube([length2-4, width2-4, height - 1]);
                      cylinder(r=2,h=1);
                    }
                    
                    //cube([length, width, height]);
                    translate([wallThickness, wallThickness, floorThickness])
                        cube([length2 - wallThickness * 2, width2 - wallThickness * 2, height - floorThickness]);
                }
            }
        }
    }
    translate([length1 - wallThickness, wallThickness, floorThickness])
        cube([wallThickness, length2 - wallThickness * 2, height - floorThickness]);
    translate([wallThickness, length2 - wallThickness, floorThickness])
        cube([length1 - wallThickness * 2, wallThickness, height - floorThickness]);
}
