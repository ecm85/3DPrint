include<SquarePileLib.scad>
//25.82 by 32.82 by 2.15
singleTool3xPileHeight = 2.15;
singleTool3xPileWidth = 19.30 + .5;
singleTool3xPileLength = 24.23 + .5;

module LeftTool3xPile(wallThickness, totalHeight, tool3xPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleTool3xPileHeight,
        singleTool3xPileWidth,
        singleTool3xPileLength,
        tool3xPileCount);
}

module RightTool3xPile(wallThickness, totalHeight, tool3xPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleTool3xPileHeight,
        singleTool3xPileWidth,
        singleTool3xPileLength,
        tool3xPileCount);
}

module BottomTool3xPile(wallThickness, totalHeight, tool3xPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleTool3xPileHeight,
        singleTool3xPileWidth,
        singleTool3xPileLength,
        tool3xPileCount);
}

module TopTool3xPile(wallThickness, totalHeight, tool3xPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleTool3xPileHeight,
        singleTool3xPileWidth,
        singleTool3xPileLength,
        tool3xPileCount);
}

function tool3xPileHeight(tool3xPileCount) =
    (tool3xPileCount * singleTool3xPileHeight) + .5;