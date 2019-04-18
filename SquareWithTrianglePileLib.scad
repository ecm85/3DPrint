module LeftPile(wallThickness, totalHeight, singlePileHeight, singlePileWidth, singlePileLength, pileCount, openingSizePercent = .5){
    pileHeight = (pileCount * singlePileHeight) + .5;
    lengthOpeningSize = .00001;
    widthOpeningSize = singlePileWidth * openingSizePercent;
    blockerSize = (singlePileWidth - widthOpeningSize) / 2;
    
    translate([wallThickness, wallThickness, totalHeight - pileHeight])
        cube([singlePileLength, singlePileWidth, pileHeight]);
    
    y = singlePileWidth;
    a = 4.3;
    height = pileHeight;
    translate([wallThickness, wallThickness, totalHeight - pileHeight])
        rotate([0,0,90])
            polyhedron(
                points = 
                [
                    [0,0,0],
                    [y,0,0],
                    [y/2,a,0],
                    [0,0,height],
                    [y,0,height],
                    [y/2,a,height],
                ],
                faces = 
                [
                    [0,1,2],
                    [3,4,1,0],
                    [3,5,4],
                    [4,5,2,1],
                    [5,3,0,2]
                ]);   
    
//    translate([-.00001, wallThickness + (blockerSize), 0])
//        cube([wallThickness + lengthOpeningSize, widthOpeningSize, totalHeight]);
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