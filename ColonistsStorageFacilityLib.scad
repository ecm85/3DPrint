include<SquarePileLib.scad>
//25.82 by 32.82 by 2.15
singleStorageFacilityPileHeight = 2.15;
singleStorageFacilityPileWidth = 45.19 + .7;
singleStorageFacilityPileLength = 45.19 + .7;

module LeftStorageFacilityPile(wallThickness, totalHeight, storageFacilityPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleStorageFacilityPileHeight,
        singleStorageFacilityPileWidth,
        singleStorageFacilityPileLength,
        storageFacilityPileCount);
}

module RightStorageFacilityPile(wallThickness, totalHeight, storageFacilityPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleStorageFacilityPileHeight,
        singleStorageFacilityPileWidth,
        singleStorageFacilityPileLength,
        storageFacilityPileCount);
}

module BottomStorageFacilityPile(wallThickness, totalHeight, storageFacilityPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleStorageFacilityPileHeight,
        singleStorageFacilityPileWidth,
        singleStorageFacilityPileLength,
        storageFacilityPileCount);
}

module TopStorageFacilityPile(wallThickness, totalHeight, storageFacilityPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleStorageFacilityPileHeight,
        singleStorageFacilityPileWidth,
        singleStorageFacilityPileLength,
        storageFacilityPileCount);
}

function storageFacilityPileHeight(storageFacilityPileCount) =
    (storageFacilityPileCount * singleStorageFacilityPileHeight) + .5;