include<EotVRecruitsLib.scad>
difference() {
    testBoxHeight = recruitPileHeight(4) + 3;
    testBoxLength = 95;
    testBoxWidth = 35;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftRecruitPile(wallThickness, testBoxHeight, 2);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightRecruitPile(wallThickness, testBoxHeight, 4);
    translate([singleRecruitPileLength + wallThickness, 0, 0])
        BottomRecruitPile(wallThickness, testBoxHeight, 1);
    //translate([0, testBoxWidth, 0])
        //TopRecruitPile(wallThickness, testBoxHeight, 4);
}