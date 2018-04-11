length = 110;
width = 110;
height = 35;
wallThickness = 2;
floorThickness = 3;
widthDividers = 2;
lengthDividers = 0;

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
        if(widthDividers>0)
            for(index=[1:widthDividers])
                translate([0, (width/widthSections) * index - (wallThickness/2), 0])
                cube([length, wallThickness, height]);
        if(lengthDividers>0)
            for(index=[1:lengthDividers])
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