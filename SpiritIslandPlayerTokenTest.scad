length = 62;
width = 20;
height = 25;
wallThickness = 2;
floorThickness = 3;
widthDividers = 3;
lengthDividers = 1;
widthDividerToSkip = -1;

//Based on magnet size:
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

woodenMarkerDiameter = 14.5 + 1.5;
woodenMarkerHeight = 3.07;
woodenMarkerCount1 = 6;
woodenMarkerCount2 = 7;

cardboardMarkerDiameter = 20.28 + 1.5;
cardboardMarkerHeight = 2.15;
cardboardMarkerCount = 6;

include<CirclePileLib.scad>;


difference(){
    union(){
            $fn=50;
            minkowski()
            {
              translate([2,2,0])
                cube([length-4, width-4, height - 1]);
              cylinder(r=2,h=1);
            }
        }

    translate([wallThickness, 0, 0]) {
        translate([0, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
        translate([(wallThickness + woodenMarkerDiameter) * 1, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
        translate([(wallThickness + woodenMarkerDiameter) * 2, 0, 0])
            BottomPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
    }
    
}

