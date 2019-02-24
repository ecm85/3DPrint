include<SquarePileLib.scad>
//25.82 by 32.82 by 2.15
singleTool1xPileHeight = 2.15;
singleTool1xPileWidth = 21.57 + .5;
singleTool1xPileLength = 15 + .5;

module LeftTool1xPile(wallThickness, totalHeight, tool1xPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleTool1xPileHeight,
        singleTool1xPileWidth,
        singleTool1xPileLength,
        tool1xPileCount,
        .6);
}

module RightTool1xPile(wallThickness, totalHeight, tool1xPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleTool1xPileHeight,
        singleTool1xPileWidth,
        singleTool1xPileLength,
        tool1xPileCount,
        .6);
}

module BottomTool1xPile(wallThickness, totalHeight, tool1xPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleTool1xPileHeight,
        singleTool1xPileWidth,
        singleTool1xPileLength,
        tool1xPileCount,
        .6);
}

module TopTool1xPile(wallThickness, totalHeight, tool1xPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleTool1xPileHeight,
        singleTool1xPileWidth,
        singleTool1xPileLength,
        tool1xPileCount,
        .6);
}

function tool1xPileHeight(tool1xPileCount) =
    (tool1xPileCount * singleTool1xPileHeight) + .5;