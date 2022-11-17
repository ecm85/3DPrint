include<HexPileLib.scad>
singlePortHeight = 1.9;
//flat to flat = d = 34.65;
//D = d * 2/rt(3)
d = 34.65 + .8;
D = d * 2/sqrt(3);
singlePortDiameter = D;
//singlePortDiameter =  + .5;

module LeftPort(totalHeight, portCount){
    LeftPile(
        totalHeight,
        singlePortHeight,
        singlePortDiameter,
        portCount);
}

module RightPort(totalHeight, portCount){
    RightPile(
        totalHeight,
        singlePortHeight,
        singlePortDiameter,
        portCount);
}

module BottomPort(totalHeight, portCount){
    BottomPile(
        totalHeight,
        singlePortHeight,
        singlePortDiameter,
        portCount);
}

module TopPort(totalHeight, portCount){
    TopPile(
        totalHeight,
        singlePortHeight,
        singlePortDiameter,
        portCount);
}

function portHeight(portCount) =
    (portCount * singlePortHeight) + .5;

function actualPortWidth() = singlePortDiameter * .85;
