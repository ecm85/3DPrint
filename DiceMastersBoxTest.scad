diceSide = 13.5;
wallThickness = 1;
floorThickness = 2;
dicePerRow = 4;
diceLengthFudgeFactor = 1;
diceWidthFudgeFactor = .5;
diceHeightFudgeFactor = .5;
diceOpeningLength = diceSide * dicePerRow + diceLengthFudgeFactor;
diceOpeningWidth = diceSide + diceWidthFudgeFactor;
diceOpeningHeight = diceSide + diceHeightFudgeFactor;
dividerInnerOpeningLength = 38.1 + .5; //TODO: Get this correct
dividerInnerOpeningWidth = .75; //TODO: Get this correct
dividerInnerOpeningHeight = 25; //TODO: Get this correct
magnetHoleWidth = 0;
boxLength = diceOpeningLength + wallThickness * 2;
boxWidth = diceOpeningWidth + wallThickness + (wallThickness * 2 + dividerInnerOpeningWidth);
outerWallThickness = 2;
fullDividerHeight = 38.1 + .5;
extraHeight = 2;
numRows = 1;

difference() {
    union() {
        translate([outerWallThickness, outerWallThickness, 0]) {
            for(i=[0:numRows - 1]) {
                translate([0, i >= numRows/2 ? magnetHoleWidth + wallThickness * 2 : 0, 0]) {
                    translate([0, i * (boxWidth), 0])
                        SingleDiceBox();
                    translate([boxLength, i * boxWidth, 0])
                        SingleDiceBox();
                }
            }
        }
        difference(){
            cube([
                boxLength * 2 + outerWallThickness * 2,
                boxWidth * numRows + outerWallThickness + magnetHoleWidth + wallThickness * 2,
                floorThickness + fullDividerHeight + extraHeight]);
            translate([outerWallThickness, outerWallThickness, floorThickness])
                cube([boxLength * 2, boxWidth * numRows - outerWallThickness + magnetHoleWidth + wallThickness * 2, fullDividerHeight + extraHeight]);
        }
    }
    translate([outerWallThickness, outerWallThickness, 0]) {
        translate([(boxLength * 2)/2 - magnetHoleWidth/2, boxWidth * numRows/2 + wallThickness, 0])
            cube([magnetHoleWidth, magnetHoleWidth, 100]);
    }
}

module SingleDiceBox() {
    //TODO: Minkowski
    difference() {
        union() {
            cube([
                boxLength,
                boxWidth,
                diceOpeningHeight + floorThickness
            ]);
            translate([0, wallThickness + diceOpeningWidth, 0])
                cube([boxLength, wallThickness * 2 + dividerInnerOpeningWidth, floorThickness + dividerInnerOpeningHeight]);
        }
        translate([wallThickness, wallThickness, floorThickness])
            cube([diceOpeningLength, diceOpeningWidth, diceOpeningHeight]);
        translate([
            boxLength/2 - dividerInnerOpeningLength/2,
            wallThickness + diceOpeningWidth + wallThickness,
            floorThickness])
            cube([dividerInnerOpeningLength, dividerInnerOpeningWidth, dividerInnerOpeningHeight]);
        

    
        translate([0,wallThickness + diceOpeningWidth * 1/2,diceOpeningWidth * 1/2 + floorThickness])
            rotate([90, 0, 90])
                cylinder(h=wallThickness, d=diceOpeningWidth * 2/3);
        
        translate([diceOpeningLength + wallThickness,wallThickness + diceOpeningWidth * 1/2,diceOpeningWidth * 1/2 + floorThickness])
            rotate([90, 0, 90])
                cylinder(h=wallThickness, d=diceOpeningWidth * 2/3);
        
        translate([0, wallThickness + diceOpeningWidth * 1/6, floorThickness + diceOpeningWidth * 1/2])
            cube([wallThickness, diceOpeningWidth * 2/3, diceOpeningWidth * 2/3]);
        
        translate([diceOpeningLength + wallThickness, wallThickness + diceOpeningWidth * 1/6, floorThickness + diceOpeningWidth * 1/2])
            cube([wallThickness, diceOpeningWidth * 2/3, diceOpeningWidth * 2/3]);
    }
    
    
}

//TODO:
//Finger notches?
//Test print