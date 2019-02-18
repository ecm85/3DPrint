include<ColonistsStorageFacilityLib.scad>
difference() {
    testBoxHeight = storageFacilityPileHeight(10) + 3;
    testBoxLength = 110;
    testBoxWidth = 110;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftStorageFacilityPile(wallThickness, testBoxHeight, 10);
    translate([testBoxLength, singleStorageFacilityPileLength + wallThickness, 0])
        RightStorageFacilityPile(wallThickness, testBoxHeight, 6);
    translate([singleStorageFacilityPileLength + wallThickness, 0, 0])
        BottomStorageFacilityPile(wallThickness, testBoxHeight, 1);
    translate([0, testBoxWidth, 0])
        TopStorageFacilityPile(wallThickness, testBoxHeight, 10);
}