washerDiameter = 16.25;
washerHeight = 1.4;
lidHeight = 3;
height = 0;
wallThickness = 3;
length = 75;
width = 90;
rimThickness = 2;
rimPadding = .75;
rimHeight = 10;
marketMarkerDiameter = 14.9 + .5;
marketMarkerCount = 7;
marketMarkerHeight = 1;
portCount = 3.5;

extra = rimThickness + rimPadding;
totalLength = length + extra * 2;
totalWidth = width + extra * 2;


mirror([0, 90, 0]) {

    difference() {

        translate([-extra, -extra, 0]) {
            difference() {
                $fn=50;
                minkowski()
                {
                  translate([2,2,0])
                    cube([totalLength-4, totalWidth-4, rimHeight - 2]);
                  cylinder(r=2,h=1);
                }
                translate([rimThickness, rimThickness, lidHeight]) {
                    minkowski()
                    {
                      translate([2,2,0])
                        cube([length + rimPadding * 2 - 4, width + rimPadding * 2 - 4, rimHeight - lidHeight]);
                      cylinder(r=2,h=1);
                    }
                }
            }
        }

        //    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
        //    position of box n = whitespace * n + 1 + width of box * (n)

            translate([length/2,  width/2, lidHeight - washerHeight])
                cylinder(washerHeight, d=washerDiameter);


            Ports();

            MarketMarkers();

            PointTiles();



    }
}

module Ports()
{
    include<CaledoniaPortsLib.scad>;
     translate([length, 0, rimHeight])
        RightPort(height, portCount);
}

module MarketMarkers()
{
    include<CirclePileLib.scad>;
    translate([0, width - (wallThickness + marketMarkerDiameter), rimHeight])
        LeftPile(height, marketMarkerHeight, marketMarkerDiameter, marketMarkerCount);

}

module PointTiles()
{
    include<CaledoniaPointTileLib.scad>;
    translate([length, width - (wallThickness * 2 + singlePointTileWidth), rimHeight])
        RightPointTile(wallThickness, height, 4);
}