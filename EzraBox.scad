length = 85;
width = 85;
height = 25;
wallThickness = 2;
floorThickness = 3;
widthDividers = 3;
lengthDividers = 0;
widthDividerToSkip = 3;

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
        if(widthDividers>0)
            for(index=[1:widthDividers])
                if (index != widthDividerToSkip)
                    translate([0, (width/widthSections) * index - (wallThickness/2), 0])
                        cube([length, wallThickness, height]);
        if(lengthDividers>0)
            for(index=[1:lengthDividers])
                translate([ (length/lengthSections) * index - (wallThickness/2), 0, 0])
                    cube([wallThickness, width, height]);
        
        translate([length/2, width/2, 0])
            cylinder(height, d=magnetBaseOuterDiameter);
    };
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
};