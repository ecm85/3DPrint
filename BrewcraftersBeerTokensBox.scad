include<BrewcraftersBeerTokensLib.scad>
include<CoreLib.scad>
topBoxBeerTokensPerStack = [8,9,12,9,8,12];
numberOfTopBoxes = len(topBoxBeerTokensPerStack);

bottomBoxBeerTokensPerStack = [9,10,9,10,8,9];
numberOfBottomBoxes = len(bottomBoxBeerTokensPerStack);

leftBoxBeerTokensPerStack = [];
numberOfLeftBoxes = len(leftBoxBeerTokensPerStack);

rightBoxBeerTokensPerStack = [];
numberOfRightBoxes = len(rightBoxBeerTokensPerStack);


magnetHoleWidth = 19;
floorThickness = 3;
wallThickness = 3;
maxBeerTokensPerStack = max(
    (numberOfTopBoxes > 0) ? max(topBoxBeerTokensPerStack) : 0,
    (numberOfBottomBoxes > 0) ? max(bottomBoxBeerTokensPerStack) : 0,
    (numberOfLeftBoxes > 0) ? max(leftBoxBeerTokensPerStack) : 0,
    (numberOfRightBoxes > 0) ? max(rightBoxBeerTokensPerStack) : 0
);
height = beerTokenPileHeight(maxBeerTokensPerStack) + floorThickness;
length = (singleBeerTokenPileLength * max(numberOfTopBoxes, numberOfBottomBoxes)) + (wallThickness * (max(numberOfTopBoxes, numberOfBottomBoxes) + 1));
width = 80;
echo ("height = ", height);
echo ("length = ", length);

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

    whiteSpaceBetweenTopBoxes = whiteSpaceBetweenBoxes(length, numberOfTopBoxes, singleBeerTokenPileWidth);
    whiteSpaceBetweenBottomBoxes = whiteSpaceBetweenBoxes(length, numberOfBottomBoxes, singleBeerTokenPileWidth);
    remainingWidth = width - (2 * singleBeerTokenPileWidth);
    whiteSpaceBetweenLeftBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfLeftBoxes, singleBeerTokenPileWidth);
    whiteSpaceBetweenRightBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfRightBoxes, singleBeerTokenPileWidth);

    if (numberOfBottomBoxes != 0)
    {
        for(i=[0:numberOfBottomBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenBottomBoxes, i, singleBeerTokenPileWidth, -wallThickness),
                0,
                0])
                BottomBeerTokenPile(wallThickness, height, bottomBoxBeerTokensPerStack[i]);
        }
    }
    
    
    if (numberOfTopBoxes != 0)
    {
        for(i=[0:numberOfTopBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenTopBoxes, i, singleBeerTokenPileWidth, -wallThickness),
                width,
                0])
                TopBeerTokenPile(wallThickness, height, topBoxBeerTokensPerStack[i]);
        }
    }
    
    if (numberOfLeftBoxes != 0)
    {
        for(i=[0:numberOfLeftBoxes - 1]){
            translate([
                0,
                getOffsetForWhiteSpace(whiteSpaceBetweenLeftBoxes, i, singleBeerTokenPileWidth, singleBeerTokenPileWidth - wallThickness),
                0])
                LeftBeerTokenPile(wallThickness, height, leftBoxBeerTokensPerStack[i]);
        }
    }
    
    if (numberOfRightBoxes != 0)
    {
        for(i=[0:numberOfRightBoxes - 1]){
            translate([
                length,
                getOffsetForWhiteSpace(whiteSpaceBetweenRightBoxes, i, singleBeerTokenPileWidth, singleBeerTokenPileWidth - wallThickness),
                0])
                RightBeerTokenPile(wallThickness, height, rightBoxBeerTokensPerStack[i]);
        }
    }
    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}

