include<CaledoniaPortsLib.scad>
difference() {
    testBoxHeight = portHeight(3) + 3;
    testBoxLength = 36;
    testBoxWidth = 40;
    wallThickness = 3;

    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    translate([0, testBoxWidth/2 - singlePortDiameter/2, 0])
        LeftPort(testBoxHeight, 3);
//    translate([testBoxLength, testBoxWidth/2 - singlePortDiameter/2, 0])
//        RightPort(testBoxHeight, 6);
//    translate([testBoxLength/2 - singlePortDiameter/2, 0, 0])
//        BottomPort(testBoxHeight, 1);
//    translate([testBoxLength/2 - singlePortDiameter/2, testBoxWidth, 0])
//        TopPort(testBoxHeight, 10);
}