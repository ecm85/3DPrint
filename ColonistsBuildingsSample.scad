include<ColonistsBuildingsLib.scad>
difference() {
    testBoxHeight = buildingPileHeight(10) + 3;
    testBoxLength = 110;
    testBoxWidth = 75;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftBuildingPile(wallThickness, testBoxHeight, 10);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightBuildingPile(wallThickness, testBoxHeight, 6);
    translate([singleBuildingPileLength + wallThickness, 0, 0])
        BottomBuildingPile(wallThickness, testBoxHeight, 1);
    translate([0, testBoxWidth, 0])
        TopBuildingPile(wallThickness, testBoxHeight, 10);
}