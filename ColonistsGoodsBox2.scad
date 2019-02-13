include<ColonistsGoodsLib.scad>
include<CoreLib.scad>
magnetHoleWidth = 19;
floorThickness = 3;
wallThickness = 3;
height = goodPileHeight + floorThickness;
length = 65;
width = (singleGoodPileLength + wallThickness) * 4 + wallThickness * 3;
numberOfTopBoxes = 3;
numberOfBottomBoxes = 2;
numberOfLeftBoxes = 2;
numberOfRightBoxes = 2;

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    cube([length, width, height]);

    whiteSpaceBetweenTopBoxes = whiteSpaceBetweenBoxes(length, numberOfTopBoxes, singleGoodPileLength);
    whiteSpaceBetweenBottomBoxes = whiteSpaceBetweenBoxes(length, numberOfBottomBoxes, singleGoodPileLength);
    remainingWidth = width - (2 * singleGoodPileWidth);
    whiteSpaceBetweenLeftBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfLeftBoxes, singleGoodPileLength);
    whiteSpaceBetweenRightBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfRightBoxes, singleGoodPileLength);

    for(i=[0:numberOfBottomBoxes - 1]){
        translate([
            getOffsetForWhiteSpace(whiteSpaceBetweenBottomBoxes, i, singleGoodPileLength, -wallThickness),
            0,
            0])
            BottomGoodPile(wallThickness, height);
    }
    for(i=[0:numberOfTopBoxes - 1]){
        translate([
            getOffsetForWhiteSpace(whiteSpaceBetweenTopBoxes, i, singleGoodPileLength, -wallThickness),
            width,
            0])
            TopGoodPile(wallThickness, height);
    }
    
    for(i=[0:numberOfLeftBoxes - 1]){
        translate([
            0,
            getOffsetForWhiteSpace(whiteSpaceBetweenLeftBoxes, i, singleGoodPileLength, singleGoodPileLength - wallThickness),
            0])
            LeftGoodPile(wallThickness, height);
    }
    
    for(i=[0:numberOfRightBoxes - 1]){
        translate([
            length,
            getOffsetForWhiteSpace(whiteSpaceBetweenRightBoxes, i, singleGoodPileLength, singleGoodPileLength - wallThickness),
            0])
            RightGoodPile(wallThickness, height);
    }
    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}

