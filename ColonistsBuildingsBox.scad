include<ColonistsBuildingsLib.scad>
include<CoreLib.scad>
magnetHoleWidth = 19;
floorThickness = 3;
wallThickness = 3;
maxBuildingsPerStack = 8;
height = buildingPileHeight(maxBuildingsPerStack) + floorThickness;
length = 110;
width = 110;
numberOfTopBoxes = 3;
topBoxBuildingsPerStack = [4, 4, 8];
numberOfBottomBoxes = 2;
bottomBoxBuildingsPerStack = [4, 4];
numberOfLeftBoxes = 0;
leftBoxBuildingsPerStack = [];
numberOfRightBoxes = 0;
rightBoxBuildingsPerStack = [];

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    cube([length, width, height]);

    whiteSpaceBetweenTopBoxes = whiteSpaceBetweenBoxes(length, numberOfTopBoxes, singleBuildingPileWidth);
    whiteSpaceBetweenBottomBoxes = whiteSpaceBetweenBoxes(length, numberOfBottomBoxes, singleBuildingPileWidth);
    remainingWidth = width - (2 * singleBuildingPileWidth);
    whiteSpaceBetweenLeftBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfLeftBoxes, singleBuildingPileWidth);
    whiteSpaceBetweenRightBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfRightBoxes, singleBuildingPileWidth);

    if (numberOfBottomBoxes != 0)
    {
        for(i=[0:numberOfBottomBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenBottomBoxes, i, singleBuildingPileWidth, -wallThickness),
                0,
                0])
                BottomBuildingPile(wallThickness, height, bottomBoxBuildingsPerStack[i]);
        }
    }
    
    
    if (numberOfTopBoxes != 0)
    {
        for(i=[0:numberOfTopBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenTopBoxes, i, singleBuildingPileWidth, -wallThickness),
                width,
                0])
                TopBuildingPile(wallThickness, height, topBoxBuildingsPerStack[i]);
        }
    }
    
    if (numberOfLeftBoxes != 0)
    {
        for(i=[0:numberOfLeftBoxes - 1]){
            translate([
                0,
                getOffsetForWhiteSpace(whiteSpaceBetweenLeftBoxes, i, singleBuildingPileWidth, singleBuildingPileWidth - wallThickness),
                0])
                LeftBuildingPile(wallThickness, height, leftBoxBuildingsPerStack[i]);
        }
    }
    
    if (numberOfRightBoxes != 0)
    {
        for(i=[0:numberOfRightBoxes - 1]){
            translate([
                length,
                getOffsetForWhiteSpace(whiteSpaceBetweenRightBoxes, i, singleBuildingPileWidth, singleBuildingPileWidth - wallThickness),
                0])
                RightBuildingPile(wallThickness, height, rightBoxBuildingsPerStack[i]);
        }
    }
    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}

