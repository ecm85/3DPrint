include<ColonistsGoodsBase.scad>
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
        translate([((i + 1) * whiteSpaceBetweenBottomBoxes + singleGoodPileLength * (i)) - wallThickness, 0, 0])
            BottomGoodPile(wallThickness, height);
    }
    for(i=[0:numberOfTopBoxes - 1]){
        translate([((i + 1) * whiteSpaceBetweenTopBoxes + singleGoodPileLength * (i)) - wallThickness, width, 0])
            TopGoodPile(wallThickness, height);
    }
    
    for(i=[0:numberOfLeftBoxes - 1]){
        translate([0, singleGoodPileLength + ((i + 1) * whiteSpaceBetweenLeftBoxes + singleGoodPileLength * (i)) - wallThickness, 0])
            LeftGoodPile(wallThickness, height);
    }
    for(i=[0:numberOfRightBoxes - 1]){
        translate([length, singleGoodPileLength + ((i + 1) * whiteSpaceBetweenRightBoxes + singleGoodPileLength * (i)) - wallThickness, 0])
            RightGoodPile(wallThickness, height);
    }
    
    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}

function whiteSpaceBetweenBoxes(side, numberOfBoxes, boxLength) =
    (side - (numberOfBoxes * boxLength)) / (numberOfBoxes + 1);