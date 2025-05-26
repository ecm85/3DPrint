length = 167;
width = 43;
height = 25;
wallThickness = 1;
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

    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

    translate([wallThickness, 0, 0]) {
        translate([0, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
        translate([(wallThickness + woodenMarkerDiameter) * 1, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
        translate([(wallThickness + woodenMarkerDiameter) * 2, 0, 0])
            BottomPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
    }
    translate([59.5, 0, 0]) {
        translate([0, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
        translate([(wallThickness + woodenMarkerDiameter) * 1, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
        translate([(wallThickness + woodenMarkerDiameter) * 2, 0, 0])
            BottomPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
    }
    
    translate([118.5, 0, 0]) {
        translate([0, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
        translate([(wallThickness + woodenMarkerDiameter) * 1, 0, 0])
            BottomPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
    }
    translate([length, width/2 - cardboardMarkerDiameter/2 - 4, 0])
        RightPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
    
    translate([0, width/2 - cardboardMarkerDiameter/2 + 4, 0])
        LeftPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
    
    translate([15, width, 0]) {
        translate([0, 0, 0])
            TopPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
        translate([(wallThickness + woodenMarkerDiameter) * 1, 0, 0])
            TopPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
    }
    
    translate([50.5, width, 0]) {
        translate([0, 0, 0])
            TopPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
        translate([(wallThickness + cardboardMarkerDiameter) * 1, 0, 0])
            TopPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
        translate([wallThickness * 2 + woodenMarkerDiameter + cardboardMarkerDiameter, 0, 0])
            TopPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
    }
    
    translate([108.5, width, 0]) {
        translate([0, 0, 0])
            TopPile(height, cardboardMarkerHeight, cardboardMarkerDiameter, cardboardMarkerCount);
        translate([(wallThickness + cardboardMarkerDiameter) * 1, 0, 0])
            TopPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount2);
        translate([wallThickness * 2 + woodenMarkerDiameter + cardboardMarkerDiameter, 0, 0])
            TopPile(height, woodenMarkerHeight, woodenMarkerDiameter, woodenMarkerCount1);
    }
}

