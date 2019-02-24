include<SquarePileLib.scad>
//25.82 by 32.82 by 2.15
singleWarehouseExtensionPileHeight = 2.15;
singleWarehouseExtensionPileWidth = 59.86 + .5;
singleWarehouseExtensionPileLength = 20.21 + .5;

module LeftWarehouseExtensionPile(wallThickness, totalHeight, warehouseExtensionPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleWarehouseExtensionPileHeight,
        singleWarehouseExtensionPileWidth,
        singleWarehouseExtensionPileLength,
        warehouseExtensionPileCount,
        .6);
}

module RightWarehouseExtensionPile(wallThickness, totalHeight, warehouseExtensionPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleWarehouseExtensionPileHeight,
        singleWarehouseExtensionPileWidth,
        singleWarehouseExtensionPileLength,
        warehouseExtensionPileCount,
        .6);
}

module BottomWarehouseExtensionPile(wallThickness, totalHeight, warehouseExtensionPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleWarehouseExtensionPileHeight,
        singleWarehouseExtensionPileWidth,
        singleWarehouseExtensionPileLength,
        warehouseExtensionPileCount,
        .6);
}

module TopWarehouseExtensionPile(wallThickness, totalHeight, warehouseExtensionPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleWarehouseExtensionPileHeight,
        singleWarehouseExtensionPileWidth,
        singleWarehouseExtensionPileLength,
        warehouseExtensionPileCount,
        .6);
}

function warehouseExtensionPileHeight(warehouseExtensionPileCount) =
    (warehouseExtensionPileCount * singleWarehouseExtensionPileHeight) + .5;