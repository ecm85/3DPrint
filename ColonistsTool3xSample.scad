include<ColonistsTool3xLib.scad>
difference() {
    testBoxHeight = tool3xPileHeight(10) + 3;
    testBoxLength = 110;
    testBoxWidth = 75;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftTool3xPile(wallThickness, testBoxHeight, 10);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightTool3xPile(wallThickness, testBoxHeight, 6);
    translate([singleTool3xPileLength + wallThickness, 0, 0])
        BottomTool3xPile(wallThickness, testBoxHeight, 1);
    translate([0, testBoxWidth, 0])
        TopTool3xPile(wallThickness, testBoxHeight, 10);
}