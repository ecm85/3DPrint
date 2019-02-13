singleGoodPileHeight = 2.15;
singleGoodPileWidth = 15.05 + 1.3;
singleGoodPileLength = 15.05 + 1.3;
goodPileCount = 10;
goodPileHeight = (goodPileCount * singleGoodPileHeight) + .5;
module LeftGoodPile(wallThickness, totalHeight){
//    15.05 by 14.95 by 2.15

    openingSize = singleGoodPileWidth * .75;
    blockerSize = (singleGoodPileLength - openingSize) / 2;
    
    translate([wallThickness, wallThickness, totalHeight - goodPileHeight])
        cube([singleGoodPileLength, singleGoodPileWidth, goodPileHeight]);
    translate([-.00001, wallThickness + (blockerSize), 0])
        cube([wallThickness + openingSize, openingSize, totalHeight]);
}

module RightGoodPile(wallThickness, totalHeight){
    translate([0, wallThickness + wallThickness + singleGoodPileWidth, 0])
        rotate([0, 0, 180])
            LeftGoodPile(wallThickness, totalHeight);
}

module BottomGoodPile(wallThickness, totalHeight){
    translate([wallThickness + wallThickness + singleGoodPileWidth, 0, 0])
        rotate([0, 0, 90])
            LeftGoodPile(wallThickness, totalHeight);
}

module TopGoodPile(wallThickness, totalHeight){
//    translate([
//        wallThickness + wallThickness + singleGoodPileWidth,
//        wallThickness + wallThickness + singleGoodPileWidth,
//        0])
        rotate([0, 0, 270])
            LeftGoodPile(wallThickness, totalHeight);
}