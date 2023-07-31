include<BrewcraftersBeerTokensLib.scad>
difference() {
    wallThickness = 3;
    leftTokenCount = 2;
    rightTokenCount = 4;
    bottomTokenCount = 1;
    maxTokenCount = max(leftTokenCount, rightTokenCount, bottomTokenCount);
    floorHeight = 3;
    testBoxHeight = beerTokenPileHeight(maxTokenCount) + floorHeight;
    testBoxLength = singleBeerTokenPileLength + wallThickness * 2;
    testBoxWidth = boxWidth + wallThickness;
    
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftBeerTokenPile(wallThickness, testBoxHeight, leftTokenCount);
//    translate([testBoxLength, 0, 0])
////    translate([testBoxLength, 0, 0])
//        RightBeerTokenPile(wallThickness, testBoxHeight, rightTokenCount);
//    translate([singleBeerTokenPileLength + wallThickness, 0, 0])
//        BottomBeerTokenPile(wallThickness, testBoxHeight, bottomTokenCount);
//    translate([0, testBoxWidth, 0])
//        TopBeerTokenPile(wallThickness, testBoxHeight, 4);
//    translate([boxWidth + wallThickness, testBoxWidth, 0])
//        TopBeerTokenPile(wallThickness, testBoxHeight, leftTokenCount);

}