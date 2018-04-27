wallThickness = 2;
floorThickness = 3;
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;


length = 96 + wallThickness * 2;

stack1Width = 3.5;
stack2Width = 3.5;
stack3Width = 7;
stack4Width = 7;
stack5Width = 40;
width = stack1Width + stack2Width + stack3Width + stack4Width + stack5Width + magnetBaseOuterDiameter + wallThickness * 7;
height = 65 + 3;
wallHeightOffset = 15;

//Based on magnet size:


difference(){
    cube([length, width, height]);
    translate([wallThickness, wallThickness, floorThickness])
        cube([length - wallThickness * 2,width - wallThickness * 2, height - floorThickness]);
    translate([wallThickness, 0, height - wallHeightOffset])
        cube([length - wallThickness * 2, width,wallHeightOffset]);
}

difference() {
    union() {
        difference() {
            union() {
            
                
                
                translate([0, wallThickness + stack1Width, 0])
                    cube([length, wallThickness, height]);

                translate([0, wallThickness * 2 + stack1Width + stack2Width, 0])
                    cube([length, wallThickness, height]);
                
                translate([0, wallThickness * 3 + stack1Width + stack2Width + stack3Width, 0])
                    cube([length, wallThickness, height]);
                
                translate([0, wallThickness * 4 + stack1Width + stack2Width + stack3Width + stack4Width, 0])
                    cube([length, wallThickness, height]);
                
                translate([0, wallThickness * 5 + stack1Width + stack2Width + stack3Width + stack4Width + magnetBaseOuterDiameter, 0])
                    cube([length, wallThickness, height]);

            }
            translate([wallThickness, 0, height - wallHeightOffset])
                cube([length - wallThickness * 2, width,wallHeightOffset]);
        }
        translate([length/2, wallThickness * 5 + stack1Width + stack2Width + stack3Width + stack4Width + magnetBaseOuterDiameter/2, 0])
                    cylinder(height, d=magnetBaseOuterDiameter);
    };
    translate([length/2, wallThickness * 5 + stack1Width + stack2Width + stack3Width + stack4Width + magnetBaseOuterDiameter/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

};
