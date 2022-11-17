include<SquarePileLib.scad>
singleContractPileHeight = 1.91;
singleContractPileWidth = 33 + 1;
singleContractPileLength = 33 + 1;

module LeftContractPile(wallThickness, totalHeight, contractPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleContractPileHeight,
        singleContractPileWidth,
        singleContractPileLength,
        contractPileCount);
}

module RightContractPile(wallThickness, totalHeight, contractPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleContractPileHeight,
        singleContractPileWidth,
        singleContractPileLength,
        contractPileCount);
}

module BottomContractPile(wallThickness, totalHeight, contractPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleContractPileHeight,
        singleContractPileWidth,
        singleContractPileLength,
        contractPileCount);
}

module TopContractPile(wallThickness, totalHeight, contractPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleContractPileHeight,
        singleContractPileWidth,
        singleContractPileLength,
        contractPileCount);
}

function contractPileHeight(contractPileCount) =
    (contractPileCount * singleContractPileHeight) + .5;