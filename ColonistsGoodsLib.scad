include<SquarePileLib.scad>
singleGoodPileHeight = 2.15;
singleGoodPileWidth = 15.05 + 1.3;
singleGoodPileLength = 15.05 + 1.3;
goodPileCount = 10;
goodPileHeight = (goodPileCount * singleGoodPileHeight) + .5;
module LeftGoodPile(wallThickness, totalHeight){
//    15.05 by 14.95 by 2.15

    LeftPile(
        wallThickness,
        totalHeight,
        singleGoodPileHeight,
        singleGoodPileWidth,
        singleGoodPileLength,
        goodPileCount);
}

module RightGoodPile(wallThickness, totalHeight){
    RightPile(
        wallThickness,
        totalHeight,
        singleGoodPileHeight,
        singleGoodPileWidth,
        singleGoodPileLength,
        goodPileCount);
}

module BottomGoodPile(wallThickness, totalHeight){
    BottomPile(
        wallThickness,
        totalHeight,
        singleGoodPileHeight,
        singleGoodPileWidth,
        singleGoodPileLength,
        goodPileCount);
}

module TopGoodPile(wallThickness, totalHeight){
    TopPile(
        wallThickness,
        totalHeight,
        singleGoodPileHeight,
        singleGoodPileWidth,
        singleGoodPileLength,
        goodPileCount);
}