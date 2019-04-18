include<SpaceAlertThreatTokensLib.scad>
difference() {
    testBoxHeight = threatTokenPileHeight(2) + 3;
    testBoxLength = 15;
    testBoxWidth = 88;
    wallThickness = 2;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftThreatTokenPile(1, testBoxHeight, 2);
    translate([0, 17, 0])
        LeftThreatTokenPile(1.5, testBoxHeight, 2);
    translate([0, 34, 0])
        LeftThreatTokenPile(2, testBoxHeight, 2);
    translate([0, 51, 0])
        LeftThreatTokenPile(2.5, testBoxHeight, 2);
    translate([0, 68, 0])
        LeftThreatTokenPile(3, testBoxHeight, 2);
//    translate([100 - (15.05 + .8), 0, 0])

}