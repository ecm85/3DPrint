length = 167;
height = 35 - (22 + 3);
wallThickness = 2;
floorThickness = 3;
widthDividers = 0;
lengthDividers = 1;
widthDividerToSkip = -1;
rimThickness = 2;
rimPadding = 1.5;
width = 60;

//Based on magnet size:
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;


difference(){
    union(){
            $fn=50;
            minkowski()
            {
              translate([2,2,0])
                cube([length-4, width-4, height - 1]);
              cylinder(r=2,h=1);
            }
        }
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
//        translate([0, (3*width/5) - (wallThickness/2), 0])
//            cube([length/2, wallThickness, height]);
//        translate([length/2, (2*width/5) - (wallThickness/2), 0])
//            cube([length/2, wallThickness, height]);

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