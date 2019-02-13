include<SquarePileLib.scad>
//25.82 by 32.82 by 2.15
singleBuildingPileHeight = 2.15;
singleBuildingPileWidth = 25.82 + 1.5;
singleBuildingPileLength = 32.82 + 1.5;

module LeftBuildingPile(wallThickness, totalHeight, buildingPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleBuildingPileHeight,
        singleBuildingPileWidth,
        singleBuildingPileLength,
        buildingPileCount);
}

module RightBuildingPile(wallThickness, totalHeight, buildingPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleBuildingPileHeight,
        singleBuildingPileWidth,
        singleBuildingPileLength,
        buildingPileCount);
}

module BottomBuildingPile(wallThickness, totalHeight, buildingPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleBuildingPileHeight,
        singleBuildingPileWidth,
        singleBuildingPileLength,
        buildingPileCount);
}

module TopBuildingPile(wallThickness, totalHeight, buildingPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleBuildingPileHeight,
        singleBuildingPileWidth,
        singleBuildingPileLength,
        buildingPileCount);
}

function buildingPileHeight(buildingPileCount) =
    (buildingPileCount * singleBuildingPileHeight) + .5;