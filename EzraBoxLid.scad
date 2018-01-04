length = 90;
width = 90;
height = 4;

//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;

difference() {
cube([length, width, height]);
    translate([length/2, width/2, height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
}
//widthSections = widthDividers + 1;
//lengthSections = lengthDividers + 1;
//difference() {
//    union() {
//        
//        for(index=[0:widthDividers])
//            translate([0, (width/widthSections) * index - (wallThickness/2), 0])
//                cube([length, wallThickness, height]);
//        for(index=[0:lengthDividers])
//            translate([ (length/lengthSections) * index - (wallThickness/2), 0, 0])
//                cube([wallThickness, width, height]);
//        
//        translate([length/2, width/2, 0])
//            cylinder(height, d=magnetBaseOuterDiameter);
//    };
//    
//};