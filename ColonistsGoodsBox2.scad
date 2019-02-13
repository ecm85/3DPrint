include<ColonistsGoodsBase.scad>
    magnetHoleWidth = 19;
    floorThickness = 3;
    wallThickness = 3;
    height = goodPileHeight + floorThickness;
    length = 65;
    width = (singleGoodPileLength + wallThickness) * 4 + wallThickness * 3;
    numberOfTopBoxes = 3;
    numberOfBottomBoxes = 3;
    numberOfLeftBoxes = 1;
    numberOfRightBoxes = 1;

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    cube([length, width, height]);

    whiteSpaceBetweenTopBoxes = (length - (numberOfTopBoxes * singleGoodPileLength)) / (numberOfTopBoxes + 1);
    whiteSpaceBetweenBottomBoxes = (length - (numberOfBottomBoxes * singleGoodPileLength)) / (numberOfBottomBoxes + 1);
    whiteSpaceBetweenLeftBoxes = (width - ((numberOfLeftBoxes + 2) * singleGoodPileWidth)) / (numberOfLeftBoxes + 1);
    whiteSpaceBetweenRightBoxes = (width - ((numberOfRightBoxes + 2) * singleGoodPileWidth)) / (numberOfRightBoxes + 1);
    
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
