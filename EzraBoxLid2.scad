wallThickness = 2;
magnetBaseOuterDiameter = 18;


length = 96 + wallThickness * 2;

stack1Width = 3.5;
stack2Width = 3.5;
stack3Width = 7;
stack4Width = 7;
stack5Width = 40;
width = stack1Width + stack2Width + stack3Width + stack4Width + stack5Width + magnetBaseOuterDiameter + wallThickness * 7;

height = 3;
rimHeight = 20;
rimThickness = 2;
notchLength = 25;
//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 2;
totalHeight = height + rimHeight;

totalLength = length + rimThickness * 2 + rimPadding;
totalWidth = width + rimThickness * 2 + rimPadding;
difference() {
    cube([totalLength, totalWidth, height + rimHeight]);
    translate([rimThickness, rimThickness, height])
        cube([length + rimPadding, width + rimPadding, rimHeight]);
    
//    translate([totalLength/2 - notchLength/2, 0, 0])
//        cube([notchLength, rimThickness, totalHeight]);
//    translate([totalLength/2 - notchLength/2, totalWidth-rimThickness, 0])
//        cube([notchLength, rimThickness, totalHeight]);


//    translate([0, totalWidth/2 - notchLength/2, 0])
//        cube([rimThickness, notchLength, totalHeight]);
//    translate([totalLength-rimThickness, totalWidth/2 - notchLength/2, 0])
//        cube([rimThickness, notchLength, totalHeight]);
    
    translate([totalLength/2, rimThickness + rimPadding + wallThickness * 5 + stack1Width + stack2Width + stack3Width + stack4Width + magnetBaseOuterDiameter/2, height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
}
