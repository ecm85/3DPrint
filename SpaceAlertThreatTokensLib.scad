include<SquareWithTrianglePileLib.scad>
//side of triangle: 7.85
//sin x = o/h = 
singleThreatTokenPileHeight = 2.17;
singleThreatTokenPileWidth = 14.23 + .7;
singleThreatTokenPileLength = 9.76 + .7;

module LeftThreatTokenPile(wallThickness, totalHeight, threatTokenPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleThreatTokenPileHeight,
        singleThreatTokenPileWidth,
        singleThreatTokenPileLength,
        threatTokenPileCount);
}

module RightThreatTokenPile(wallThickness, totalHeight, threatTokenPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleThreatTokenPileHeight,
        singleThreatTokenPileWidth,
        singleThreatTokenPileLength,
        threatTokenPileCount);
}

module BottomThreatTokenPile(wallThickness, totalHeight, threatTokenPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleThreatTokenPileHeight,
        singleThreatTokenPileWidth,
        singleThreatTokenPileLength,
        threatTokenPileCount);
}

module TopThreatTokenPile(wallThickness, totalHeight, threatTokenPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleThreatTokenPileHeight,
        singleThreatTokenPileWidth,
        singleThreatTokenPileLength,
        threatTokenPileCount);
}

function threatTokenPileHeight(threatTokenPileCount) =
    (threatTokenPileCount * singleThreatTokenPileHeight) + .5;