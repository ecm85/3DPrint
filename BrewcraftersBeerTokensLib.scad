include<SquareWithCircleTokenPileLib.scad>
singleBeerTokenPileHeight = 1.91;
singleBeerTokenPileWidth = 19.5 + 1.5;
singleBeerTokenPileLength = 23.5 + 1.5;
goldLabelDiameter = 24.05 + .5;
goldLabelHeight = 1.91;
openingSizePercent = .5;
boxWidth = goldLabelDiameter;

module LeftBeerTokenPile(wallThickness, totalHeight, beerTokenPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleBeerTokenPileHeight,
        singleBeerTokenPileWidth,
        singleBeerTokenPileLength,
        beerTokenPileCount,
        goldLabelDiameter,
        goldLabelHeight,
        openingSizePercent);
}

module RightBeerTokenPile(wallThickness, totalHeight, beerTokenPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleBeerTokenPileHeight,
        singleBeerTokenPileWidth,
        singleBeerTokenPileLength,
        beerTokenPileCount,
        goldLabelDiameter,
        goldLabelHeight,
        openingSizePercent);
}

module BottomBeerTokenPile(wallThickness, totalHeight, beerTokenPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleBeerTokenPileHeight,
        singleBeerTokenPileWidth,
        singleBeerTokenPileLength,
        beerTokenPileCount,
        goldLabelDiameter,
        goldLabelHeight,
        openingSizePercent);
}

module TopBeerTokenPile(wallThickness, totalHeight, beerTokenPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleBeerTokenPileHeight,
        singleBeerTokenPileWidth,
        singleBeerTokenPileLength,
        beerTokenPileCount,
        goldLabelDiameter,
        goldLabelHeight,
        openingSizePercent);
}

function beerTokenPileHeight(beerTokenPileCount) =
    (beerTokenPileCount * singleBeerTokenPileHeight) + .5;