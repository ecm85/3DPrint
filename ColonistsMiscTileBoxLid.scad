include<ColonistsPlacePileLib.scad>
washerDiameter = 16.25;
washerHeight = 1.4;
lidHeight = 3;
height = 0;
wallThickness = 3;
length = 110;
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

tileCount = 3.5;


mirror([0, 90, 0]) {

    difference() {

        translate([-extra, -extra, 0]) {
            difference() {
               
               $fn=50;
                minkowski()
                {
                    cube([totalLength-2, totalWidth-2, rimHeight - 1]);
                    cylinder(r=2,h=1);
                }
                translate([rimThickness, rimThickness, lidHeight]) {
                    minkowski()
                    {
                        cube([length + rimPadding * 2 - 2, width + rimPadding * 2 - 2, rimHeight - lidHeight]);
                        cylinder(r=2,h=1);
                    }
                }
            }
        }

        //    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
        //    position of box n = whitespace * n + 1 + width of box * (n)

            translate([length/2,  width/2, lidHeight - washerHeight])
                cylinder(washerHeight, d=washerDiameter);
            translate([0, wallThickness, rimHeight])
                LeftPlacePile(height, tileCount);
            translate([0, wallThickness + singlePlacePileDiameter - wallThickness * 2 - .03, rimHeight])
                LeftPlacePile(height, tileCount);
            translate([length, 0, rimHeight])
                RightPlacePile(height, tileCount);
            translate([length, width - singlePlacePileDiameter, rimHeight])
                RightPlacePile(height, tileCount);
    }
}
