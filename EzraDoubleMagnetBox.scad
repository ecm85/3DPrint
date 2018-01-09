length = 85;
width = 85;
height = 25;
wallThickness = 2;
floorThickness = 3;
widthDividers = 2;
lengthDividers = 0;

//Based on magnet size:
magnetBaseOuterDiameter = 15.1;
magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;


difference(){
    cube([length, width, height]);
    translate([wallThickness, wallThickness, floorThickness])
        cube([length - wallThickness * 2,width - wallThickness * 2, height - floorThickness]);
}
widthSections = widthDividers + 1;
lengthSections = lengthDividers + 1;
difference() {
    union() {
        
        for(index=[0:widthDividers])
            translate([0, (width/widthSections) * index - (wallThickness/2), 0])
                cube([length, wallThickness, height]);
        for(index=[0:lengthDividers])
            translate([ (length/lengthSections) * index - (wallThickness/2), 0, 0])
                cube([wallThickness, width, height]);
        
        translate([length/2, width/3, 0])
            cylinder(height, d=magnetBaseOuterDiameter);
        translate([length/2, 2 * width/3, 0])
            cylinder(height, d=magnetBaseOuterDiameter);
    };
    translate([length/2, width/3, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    translate([length/2, 2 * width/3, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
};