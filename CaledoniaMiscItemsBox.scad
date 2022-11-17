magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorThickness = 2;
wallThickness = 3;
height = 26;
length = 75;
width = 90;
multiplierTileHeight = 1.9;
multiplierTileWidth = 26 + .5;
multiplierTileLength = 20 + .5;
multiplierTileCount = 12;
startingBonusTileHeight = 1.9;
startingBonusTileWidth = 25 + .5;
startingBonusTileLength = 25 + .5;
startingBonusTileCount = 9;
marketMarkerDiameter = 14.9 + .5;
marketMarkerHeight = 2.85;
marketMarkerCount = 6;
portCount = 9;
goodsBoxLength = 25;
goodsBoxWidth = 25;
goodsBoxHeight = 15;

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
    
    SquarePiles();
    
    
        
    
    Ports();
    
    MarketMarkers();
    
    PointTiles();
    
    translate([length / 2 - goodsBoxLength/2 - 7, width - (goodsBoxLength + wallThickness), height - goodsBoxHeight])
        cube([goodsBoxLength, goodsBoxWidth, goodsBoxHeight]);
    
    translate([length/2,  width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
    
 
    

}

module SquarePiles()
{
    include<SquarePileLib.scad>;
    LeftPile(
        wallThickness,
        height,
        startingBonusTileHeight,
        startingBonusTileWidth,
        startingBonusTileLength,
        startingBonusTileCount);
   
    
    translate([0, wallThickness + startingBonusTileWidth, 0])
        LeftPile(
            wallThickness,
            height,
            multiplierTileHeight,
            multiplierTileWidth,
            multiplierTileLength,
            multiplierTileCount);
}

module Ports()
{
    include<CaledoniaPortsLib.scad>;
     translate([length, 0, 0])
        RightPort(height, portCount);
}

module MarketMarkers()
{
    include<CirclePileLib.scad>;
    translate([0, width - (wallThickness + marketMarkerDiameter), 0])
        LeftPile(height, marketMarkerHeight, marketMarkerDiameter, marketMarkerCount);

}

module PointTiles()
{
    include<CaledoniaPointTileLib.scad>;
    translate([length, width - (wallThickness * 2 + singlePointTileWidth), 0])
        RightPointTile(wallThickness, height, 9);
}