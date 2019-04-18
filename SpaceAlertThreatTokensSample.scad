include<SpaceAlertThreatTokensLib.scad>
difference() {
    testBoxHeight = threatTokenPileHeight(2) + 3;
    testBoxLength = 110;
    testBoxWidth = 75;
    wallThickness = 2;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftThreatTokenPile(wallThickness, testBoxHeight, 2);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightThreatTokenPile(wallThickness, testBoxHeight, 2);
    translate([singleThreatTokenPileLength + wallThickness, 0, 0])
        BottomThreatTokenPile(wallThickness, testBoxHeight, 2);
    translate([0, testBoxWidth, 0])
        TopThreatTokenPile(wallThickness, testBoxHeight, 2);
}