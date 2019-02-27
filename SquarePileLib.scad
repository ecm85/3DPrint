module LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent = .75){
    pileHeight = (pileCount * singlePileHeight) + .5;
    lengthOpeningSize = singlePileLength * openingSizePercent;
    widthOpeningSize = singlePileWidth * openingSizePercent;
    blockerSize = (singlePileWidth - widthOpeningSize) / 2;
    
    translate([wallThickness, wallThickness, totalHeight - pileHeight])
        cube([singlePileLength, singlePileWidth, pileHeight]);
    translate([-.00001, wallThickness + (blockerSize), 0])
        cube([wallThickness + lengthOpeningSize, widthOpeningSize, totalHeight]);
}

module RightPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent = .75){
    translate([0, wallThickness + wallThickness + singlePileWidth, 0])
        rotate([0, 0, 180])
            LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent);
}

module BottomPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent = .75){
    translate([wallThickness + wallThickness + singlePileWidth, 0, 0])
        rotate([0, 0, 90])
            LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent);
}

module TopPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent = .75){
        rotate([0, 0, 270])
            LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent);
}