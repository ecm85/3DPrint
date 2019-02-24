include<ColonistsTool1xLib.scad>
difference() {
    testBoxHeight = tool1xPileHeight(10) + 3;
    testBoxLength = 110;
    testBoxWidth = 75;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftTool1xPile(wallThickness, testBoxHeight, 10);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightTool1xPile(wallThickness, testBoxHeight, 6);
    translate([singleTool1xPileLength + wallThickness, 0, 0])
        BottomTool1xPile(wallThickness, testBoxHeight, 1);
    translate([0, testBoxWidth, 0])
        TopTool1xPile(wallThickness, testBoxHeight, 10);
}