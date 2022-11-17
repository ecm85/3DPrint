include<CaledoniaContractsLib.scad>
include<CoreLib.scad>
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorThickness = 2;
wallThickness = 3;
maxContractsPerStack = 13;
height = contractPileHeight(maxContractsPerStack) + floorThickness;
echo(height);
length = 80;
width = 95;
numberOfTopBoxes = 2;
topBoxContractsPerStack = [13, 13];
numberOfBottomBoxes = 2;
bottomBoxContractsPerStack = [12, 12];
numberOfLeftBoxes = 0;
leftBoxContractsPerStack = [9];
numberOfRightBoxes = 0;
rightBoxContractsPerStack = [9];

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

    whiteSpaceBetweenTopBoxes = whiteSpaceBetweenBoxes(length, numberOfTopBoxes, singleContractPileWidth);
    whiteSpaceBetweenBottomBoxes = whiteSpaceBetweenBoxes(length, numberOfBottomBoxes, singleContractPileWidth);
    remainingWidth = width - (2 * singleContractPileWidth);
    whiteSpaceBetweenLeftBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfLeftBoxes, singleContractPileWidth);
    whiteSpaceBetweenRightBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfRightBoxes, singleContractPileWidth);

    if (numberOfBottomBoxes != 0)
    {
        for(i=[0:numberOfBottomBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenBottomBoxes, i, singleContractPileWidth, -wallThickness),
                0,
                0])
                BottomContractPile(wallThickness, height, bottomBoxContractsPerStack[i]);
        }
    }
    
    
    if (numberOfTopBoxes != 0)
    {
        for(i=[0:numberOfTopBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenTopBoxes, i, singleContractPileWidth, -wallThickness),
                width,
                0])
                TopContractPile(wallThickness, height, topBoxContractsPerStack[i]);
        }
    }
    
    if (numberOfLeftBoxes != 0)
    {
        for(i=[0:numberOfLeftBoxes - 1]){
            translate([
                0,
                getOffsetForWhiteSpace(whiteSpaceBetweenLeftBoxes, i, singleContractPileWidth, singleContractPileWidth - wallThickness),
                0])
                LeftContractPile(wallThickness, height, leftBoxContractsPerStack[i]);
        }
    }
    
    if (numberOfRightBoxes != 0)
    {
        for(i=[0:numberOfRightBoxes - 1]){
            translate([
                length,
                getOffsetForWhiteSpace(whiteSpaceBetweenRightBoxes, i, singleContractPileWidth, singleContractPileWidth - wallThickness),
                0])
                RightContractPile(wallThickness, height, rightBoxContractsPerStack[i]);
        }
    }
    
    translate([length/2,  width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}

