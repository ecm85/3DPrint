include<ColonistsGoodsLib.scad>
difference() {
    testBoxHeight = goodPileHeight + 3;
    testBoxLength = 100;
    testBoxWidth = 75;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftGoodPile(wallThickness, testBoxHeight);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightGoodPile(wallThickness, testBoxHeight);
    translate([singleGoodPileLength + wallThickness, 0, 0])
        BottomGoodPile(wallThickness, testBoxHeight);
    translate([0, testBoxWidth, 0])
        TopGoodPile(wallThickness, testBoxHeight);
}