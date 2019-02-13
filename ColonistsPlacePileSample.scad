include<ColonistsPlacePileLib.scad>
difference() {
    testBoxHeight = placePileHeight(10) + 3;
    testBoxLength = 100;
    testBoxWidth = 100;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    translate([0, testBoxWidth/2 - singlePlacePileDiameter/2, 0])
        LeftPlacePile(testBoxHeight, 10);
    translate([testBoxLength, testBoxWidth/2 - singlePlacePileDiameter/2, 0])
        RightPlacePile(testBoxHeight, 6);
    translate([testBoxLength/2 - singlePlacePileDiameter/2, 0, 0])
        BottomPlacePile(testBoxHeight, 1);
    translate([testBoxLength/2 - singlePlacePileDiameter/2, testBoxWidth, 0])
        TopPlacePile(testBoxHeight, 10);
}