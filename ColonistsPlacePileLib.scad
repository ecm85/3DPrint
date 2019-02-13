include<HexPileLib.scad>
//25.82 by 32.82 by 2.15
singlePlacePileHeight = 2.15;
//flat to flat = d = 38.15
//D = d * 2/rt(3)
d = 38.15;
D = d * 2/sqrt(3);
singlePlacePileDiameter = D;

module LeftPlacePile(totalHeight, placePileCount){
    LeftPile(
        totalHeight,
        singlePlacePileHeight,
        singlePlacePileDiameter,
        placePileCount);
}

module RightPlacePile(totalHeight, placePileCount){
    RightPile(
        totalHeight,
        singlePlacePileHeight,
        singlePlacePileDiameter,
        placePileCount);
}

module BottomPlacePile(totalHeight, placePileCount){
    BottomPile(
        totalHeight,
        singlePlacePileHeight,
        singlePlacePileDiameter,
        placePileCount);
}

module TopPlacePile(totalHeight, placePileCount){
    TopPile(
        totalHeight,
        singlePlacePileHeight,
        singlePlacePileDiameter,
        placePileCount);
}

function placePileHeight(placePileCount) =
    (placePileCount * singlePlacePileHeight) + .5;

function actualPlacePileWidth() = singlePlacePileDiameter * .85;
    