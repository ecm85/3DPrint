include<ColonistsStorageFacilityLib.scad>
include<CoreLib.scad>
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorThickness = 3;
wallThickness = 3;
maxStorageFacilitysPerStack = 12;
height = storageFacilityPileHeight(maxStorageFacilitysPerStack) + floorThickness;
length = 115;
width = 115;
numberOfTopBoxes = 2;
topBoxStorageFacilitysPerStack = [12, 12];
numberOfBottomBoxes = 1;
bottomBoxStorageFacilitysPerStack = [12];
numberOfLeftBoxes = 0;
leftBoxStorageFacilitysPerStack = [];
numberOfRightBoxes = 0;
rightBoxStorageFacilitysPerStack = [];

difference() {

//    whitespace between boxes = (total length - (# of boxes * width of boxes)) / (# of boxes + 1)
//    position of box n = whitespace * n + 1 + width of box * (n)
    
    cube([length, width, height]);

    whiteSpaceBetweenTopBoxes = whiteSpaceBetweenBoxes(length, numberOfTopBoxes, singleStorageFacilityPileWidth);
    whiteSpaceBetweenBottomBoxes = whiteSpaceBetweenBoxes(length, numberOfBottomBoxes, singleStorageFacilityPileWidth);
    remainingWidth = width - (2 * singleStorageFacilityPileWidth);
    whiteSpaceBetweenLeftBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfLeftBoxes, singleStorageFacilityPileWidth);
    whiteSpaceBetweenRightBoxes = whiteSpaceBetweenBoxes(remainingWidth, numberOfRightBoxes, singleStorageFacilityPileWidth);

    if (numberOfBottomBoxes != 0)
    {
        for(i=[0:numberOfBottomBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenBottomBoxes, i, singleStorageFacilityPileWidth, -wallThickness),
                0,
                0])
                BottomStorageFacilityPile(wallThickness, height, bottomBoxStorageFacilitysPerStack[i]);
        }
    }
    
    
    if (numberOfTopBoxes != 0)
    {
        for(i=[0:numberOfTopBoxes - 1]){
            translate([
                getOffsetForWhiteSpace(whiteSpaceBetweenTopBoxes, i, singleStorageFacilityPileWidth, -wallThickness),
                width,
                0])
                TopStorageFacilityPile(wallThickness, height, topBoxStorageFacilitysPerStack[i]);
        }
    }
    
    if (numberOfLeftBoxes != 0)
    {
        for(i=[0:numberOfLeftBoxes - 1]){
            translate([
                0,
                getOffsetForWhiteSpace(whiteSpaceBetweenLeftBoxes, i, singleStorageFacilityPileWidth, singleStorageFacilityPileWidth - wallThickness),
                0])
                LeftStorageFacilityPile(wallThickness, height, leftBoxStorageFacilitysPerStack[i]);
        }
    }
    
    if (numberOfRightBoxes != 0)
    {
        for(i=[0:numberOfRightBoxes - 1]){
            translate([
                length,
                getOffsetForWhiteSpace(whiteSpaceBetweenRightBoxes, i, singleStorageFacilityPileWidth, singleStorageFacilityPileWidth - wallThickness),
                0])
                RightStorageFacilityPile(wallThickness, height, rightBoxStorageFacilitysPerStack[i]);
        }
    }
    
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}

