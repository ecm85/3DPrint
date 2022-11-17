include<ColonistsPlacePileLib.scad>
washerDiameter = 16.25;
washerHeight = 1.4;
lidHeight = 3;
height = 0;
wallThickness = 3;
length = 110;
width = 98;
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
               
                cube([totalLength, totalWidth, rimHeight]);
                translate([rimThickness, rimThickness, lidHeight]) {
                    cube([length + rimPadding * 2, width + rimPadding * 2, rimHeight - lidHeight]);
                }
            }
        }

        //    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
        //    position of box n = whitespace * n + 1 + width of box * (n)

            translate([length/2,  width/2, lidHeight - washerHeight])
                cylinder(washerHeight, d=washerDiameter);

            translate([0, 0, rimHeight])
                LeftPlacePile(height, tileCount);
            translate([0, width - singlePlacePileDiameter, rimHeight])
                LeftPlacePile(height, tileCount);
            translate([length, width/2 - singlePlacePileDiameter/2, rimHeight])
                RightPlacePile(height, tileCount);
            translate([length/2 - singlePlacePileDiameter/2 + 5, 0, rimHeight])
                BottomPlacePile(height, tileCount);
            translate([length/2 - singlePlacePileDiameter/2 + 5, width, rimHeight])
                TopPlacePile(height, tileCount);
           



    }
}
