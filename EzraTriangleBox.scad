length = 70;
width = 70;
height = 25;
wallThickness = 2;
floorThickness = 3;
widthDividers = 0;
lengthDividers = 2;

//Based on magnet size:
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4;

difference(){
    cube([length, width, height]);
    translate([wallThickness, wallThickness, floorThickness])
        cube([length - wallThickness * 2,width - wallThickness * 2, height - floorThickness]);
}
widthSections = widthDividers + 1;
lengthSections = lengthDividers + 1;
difference() {
    union() {
        
        translate([0, (.5 * width) - (wallThickness/2), 0])
            cube([length, wallThickness, height]);
                
        translate([(length/2) - (wallThickness/2), 0, 0])
            cube([wallThickness, .5 * width, height]);
        
//        translate([(.60 * length) - (wallThickness/2), width/2, 0])
//            cube([wallThickness, .5 * width, height]);
        
        translate([length/2, width/2, 0])
            cylinder(height, d=magnetBaseOuterDiameter);
    };
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
};