module LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount){
//    15.05 by 14.95 by 2.15
    pileHeight = (pileCount * singlePileHeight) + .5;
    openingSize = singlePileWidth * .75;
    blockerSize = (singlePileLength - openingSize) / 2;
    
    translate([wallThickness, wallThickness, totalHeight - pileHeight])
        cube([singlePileLength, singlePileWidth, pileHeight]);
    translate([-.00001, wallThickness + (blockerSize), 0])
        cube([wallThickness + openingSize, openingSize, totalHeight]);
}

module RightPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount){
    translate([0, wallThickness + wallThickness + singlePileWidth, 0])
        rotate([0, 0, 180])
            LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount);
}

module BottomPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount){
    translate([wallThickness + wallThickness + singlePileWidth, 0, 0])
        rotate([0, 0, 90])
            LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount);
}

module TopPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount){
//    translate([
//        wallThickness + wallThickness + singlePileWidth,
//        wallThickness + wallThickness + singlePileWidth,
//        0])
        rotate([0, 0, 270])
            LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount);
}