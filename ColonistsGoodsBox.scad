include<ColonistsGoodsBase.scad>
    magnetHoleWidth = 19;
    floorThickness = 3;
    wallThickness = 3;
    height = goodPileHeight + floorThickness;
    length = 5 * singleGoodPileLength + 6 * wallThickness;
    width = (wallThickness * 2) + (singleGoodPileWidth * 2) + magnetHoleWidth + (wallThickness * 2);
    numberOfBoxes = 5;

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    cube([length, width, height]);

    whiteSpaceBetweenBoxes = (length - (numberOfBoxes * singleGoodPileLength)) / (numberOfBoxes + 1);
    
    for(i=[0:numberOfBoxes - 1]){
        translate([((i + 1) * whiteSpaceBetweenBoxes + singleGoodPileLength * (i)) - wallThickness, 0, 0])
            BottomGoodPile(wallThickness, height);
    }
    for(i=[0:4]) {
        translate([i * (singleGoodPileLength + wallThickness), width, 0])
            TopGoodPile(wallThickness, height);
    }
    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}
