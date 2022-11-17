include<EotVRecruitsLib.scad>
include<CoreLib.scad>
magnetHoleWidth = 19;
floorThickness = 3;
wallThickness = 3;
maxRecruitsPerStack = 4;
height = recruitPileHeight(maxRecruitsPerStack) + floorThickness;
length = 95;
width = 95;
numberOfTopBoxes = 2;
topBoxRecruitsPerStack = [4, 4, 4, 4];
numberOfBottomBoxes = 2;
bottomBoxRecruitsPerStack = [4, 4, 4, 4];
numberOfLeftBoxes = 0;
leftBoxRecruitsPerStack = [4];
numberOfRightBoxes = 0;
rightBoxRecruitsPerStack = [];

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
    
//    cube([length, width, height]);

    whiteSpaceBetweenTopBoxes = whiteSpaceBetweenBoxes(length, numberOfTopBoxes, singleRecruitPileWidth);
    whiteSpaceBetweenBottomBoxes = whiteSpaceBetweenBoxes(length, numberOfBottomBoxes, singleRecruitPileWidth);
    remainingWidth = width - (2 * singleRecruitPileWidth);
    whiteSpaceBetweenLeftBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfLeftBoxes, singleRecruitPileWidth);
    whiteSpaceBetweenRightBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfRightBoxes, singleRecruitPileWidth);

    if (numberOfBottomBoxes != 0)
    {
        for(i=[0:numberOfBottomBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenBottomBoxes, i, singleRecruitPileWidth, -wallThickness),
                0,
                0])
                BottomRecruitPile(wallThickness, height, bottomBoxRecruitsPerStack[i]);
        }
    }
    
    
    if (numberOfTopBoxes != 0)
    {
        for(i=[0:numberOfTopBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenTopBoxes, i, singleRecruitPileWidth, -wallThickness),
                width,
                0])
                TopRecruitPile(wallThickness, height, topBoxRecruitsPerStack[i]);
        }
    }
    
    if (numberOfLeftBoxes != 0)
    {
        for(i=[0:numberOfLeftBoxes - 1]){
            translate([
                0,
                getOffsetForWhiteSpace(whiteSpaceBetweenLeftBoxes, i, singleRecruitPileWidth, singleRecruitPileWidth - wallThickness),
                0])
                LeftRecruitPile(wallThickness, height, leftBoxRecruitsPerStack[i]);
        }
    }
    
    if (numberOfRightBoxes != 0)
    {
        for(i=[0:numberOfRightBoxes - 1]){
            translate([
                length,
                getOffsetForWhiteSpace(whiteSpaceBetweenRightBoxes, i, singleRecruitPileWidth, singleRecruitPileWidth - wallThickness),
                0])
                RightRecruitPile(wallThickness, height, rightBoxRecruitsPerStack[i]);
        }
    }
    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}

