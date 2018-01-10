length = 85;
width = 85;
height = 35;
wallThickness = 2;
floorThickness = 3;
widthDividers = 0;
lengthDividers = 2;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 16.2;
magnetHeight = 3.2;


difference(){
    cube([length, width, height]);
    translate([wallThickness, wallThickness, floorThickness])
        cube([length - wallThickness * 2,width - wallThickness * 2, height - floorThickness]);
}
widthSections = widthDividers + 1;
lengthSections = lengthDividers + 1;
difference() {
    union() {
        
        translate([0, (2 * width/3) - (wallThickness/2), 0])
            cube([length, wallThickness, height]);
        
        translate([(length/2) - (wallThickness/2), 0, 0])
            cube([wallThickness, 2 * width/3, height]);
        
        translate([length/2, width/2, 0])
            cylinder(height, d=magnetBaseOuterDiameter);
    };
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
};