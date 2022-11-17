module LeftPile(
    wallThickness,
    totalHeight,
    singlePileHeight,
    singlePileWidth,
    singlePileSquareLength,
    singlePileCircleLength,
    pileCount,
    openingSizePercent = .75
){
    pileHeight = (pileCount * singlePileHeight) + .5;
    offset = singlePileCircleLength * .15;

    translate([singlePileCircleLength - offset, wallThickness, totalHeight - pileHeight])
        cube([singlePileSquareLength, singlePileWidth, pileHeight]);
    union() {
        intersection(){
            translate([singlePileWidth/2 - offset, wallThickness + singlePileWidth/2, totalHeight - pileHeight])
                cylinder(pileHeight, d=singlePileWidth);
            translate([0, wallThickness, totalHeight - pileHeight])
                cube([singlePileCircleLength, singlePileWidth, pileHeight]);
        }
        intersection(){
            translate([singlePileWidth/2 - offset, wallThickness + singlePileWidth/2, totalHeight - pileHeight])
                cylinder(pileHeight, d=singlePileWidth);
            translate([-wallThickness, wallThickness, totalHeight - pileHeight])
                cube([singlePileCircleLength, singlePileWidth, pileHeight]);
        }
        translate([4, 4, 0])
            rotate([0, 0, 45])
                translate([wallThickness, wallThickness, totalHeight - pileHeight])
                    cube([singlePileCircleLength, singlePileCircleLength, pileHeight]);
    }
}

module RightPile(
    wallThickness,
    totalHeight,
    singlePileHeight,
    singlePileWidth,
    singlePileSquareLength,
    singlePileCircleLength,
    pileCount,
    openingSizePercent = .75
){
    translate([0, wallThickness + wallThickness + singlePileWidth, 0])
        rotate([0, 0, 180])
            LeftPile(
                wallThickness,
                totalHeight,
                singlePileHeight,
                singlePileWidth,
                singlePileSquareLength,
                singlePileCircleLength,
                pileCount,
                openingSizePercent
            );
}

module BottomPile(
    wallThickness,
    totalHeight,
    singlePileHeight,
    singlePileWidth,
    singlePileSquareLength,
    singlePileCircleLength,
    pileCount,
    openingSizePercent = .75
){
    translate([wallThickness + wallThickness + singlePileWidth, 0, 0])
        rotate([0, 0, 90])
            LeftPile(
                wallThickness,
                totalHeight,
                singlePileHeight,
                singlePileWidth,
                singlePileSquareLength,
                singlePileCircleLength,
                pileCount,
                openingSizePercent
            );
}

module TopPile(
    wallThickness,
    totalHeight,
    singlePileHeight,
    singlePileWidth,
    singlePileSquareLength,
    singlePileCircleLength,
    pileCount,
    openingSizePercent = .75
){
        rotate([0, 0, 270])
            LeftPile(
                wallThickness,
                totalHeight,
                singlePileHeight,
                singlePileWidth,
                singlePileSquareLength,
                singlePileCircleLength,
                pileCount,
                openingSizePercent
            );
}