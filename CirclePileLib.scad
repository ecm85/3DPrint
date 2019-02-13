module LeftPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount){
    pileHeight = (pileCount * singlePileHeight) + .5;
    offset = singlePileDiameter * .15;
    translate([singlePileDiameter/2 - offset, singlePileDiameter/2, totalHeight - pileHeight])
        cylinder(pileHeight, d=singlePileDiameter);
}

module RightPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount){
    translate([0, singlePileDiameter, 0])
        rotate([0, 0, 180])
            LeftPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount);
}

module BottomPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount){
    translate([singlePileDiameter, 0, 0])
        rotate([0, 0, 90])
            LeftPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount);
}

module TopPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount){
        rotate([0, 0, 270])
            LeftPile(totalHeight, singlePileHeight, singlePileDiameter, pileCount);
}