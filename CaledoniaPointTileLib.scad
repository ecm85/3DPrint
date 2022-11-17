include<SquareWithCirclePileLib.scad>
singlePointTileHeight = 1.91;
singlePointTileWidth = 32.9 + 1;
singlePointTileSquareLength = 13 + 1;
singlePointTileCircleLength = 16 + 1;

module LeftPointTile(wallThickness, totalHeight, pointTileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singlePointTileHeight,
        singlePointTileWidth,
        singlePointTileSquareLength,
        singlePointTileCircleLength,
        pointTileCount);
}

module RightPointTile(wallThickness, totalHeight, pointTileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singlePointTileHeight,
        singlePointTileWidth,
        singlePointTileSquareLength,
        singlePointTileCircleLength,
        pointTileCount);
}

module BottomPointTile(wallThickness, totalHeight, pointTileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singlePointTileHeight,
        singlePointTileWidth,
        singlePointTileSquareLength,
        singlePointTileCircleLength,
        pointTileCount);
}

module TopPointTile(wallThickness, totalHeight, pointTileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singlePointTileHeight,
        singlePointTileWidth,
        singlePointTileSquareLength,
        singlePointTileCircleLength,
        pointTileCount);
}

function pointTileHeight(pointTileCount) =
    (pointTileCount * singlePointTileHeight) + .5;