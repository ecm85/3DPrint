length = 90;
width = 60;
height = 13;
wallThickness = 2;
floorThickness = 3;
widthDividers = 0;
lengthDividers = 0;
widthDividerToSkip = -1;

//Based on magnet size:
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;


difference(){
    cube([length, width, height]);
    translate([wallThickness, wallThickness, floorThickness])
        cube([length - wallThickness * 2,width - wallThickness * 2, height - floorThickness]);
}
widthSections = widthDividers + 1;
lengthSections = lengthDividers + 1;
difference() {
    union() {
        translate([length/2 - magnetBaseOuterDiameter/2, 0, 0])
            cube([magnetBaseOuterDiameter, width, height]);
//        translate([ (length/2) * 1 + (magnetBaseOuterDiameter/2), 0, 0])
//            cube([wallThickness, width, height]);
//        translate([ (length/2) * 1 - (magnetBaseOuterDiameter/2), 0, 0])
//            cube([wallThickness, width, height]);
//        
//        translate([length/2, width/2, 0])
//            cylinder(height, d=magnetBaseOuterDiameter);
    };
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
};