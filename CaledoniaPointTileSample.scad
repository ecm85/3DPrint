include<CaledoniaPointTileLib.scad>
difference() {
    testBoxHeight = pointTileHeight(3) + 3;
    testBoxLength = 40;
    testBoxWidth = 30;
    wallThickness = 3;

    cube([testBoxLength, testBoxWidth, testBoxHeight]);
//    LeftPointTile(wallThickness, testBoxHeight, 10);
////    translate([100 - (15.05 + .8), 0, 0])
//    translate([testBoxLength, 0, 0])
//        RightPointTile(wallThickness, testBoxHeight, 6);
//    translate([singlePointTileLength + wallThickness, 0, 0])
//        BottomPointTile(wallThickness, testBoxHeight, 1);
    translate([0, testBoxWidth, 0])
        TopPointTile(wallThickness, testBoxHeight, 3);
}