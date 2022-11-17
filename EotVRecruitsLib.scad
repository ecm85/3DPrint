include<SquarePileLib.scad>
singleRecruitPileHeight = 1.91;
singleRecruitPileWidth = 26.45 + 1.5;
singleRecruitPileLength = 26.45 + 1.5;

module LeftRecruitPile(wallThickness, totalHeight, recruitPileCount){
    LeftPile(
        wallThickness,
        totalHeight,
        singleRecruitPileHeight,
        singleRecruitPileWidth,
        singleRecruitPileLength,
        recruitPileCount);
}

module RightRecruitPile(wallThickness, totalHeight, recruitPileCount){
    RightPile(
        wallThickness,
        totalHeight,
        singleRecruitPileHeight,
        singleRecruitPileWidth,
        singleRecruitPileLength,
        recruitPileCount);
}

module BottomRecruitPile(wallThickness, totalHeight, recruitPileCount){
    BottomPile(
        wallThickness,
        totalHeight,
        singleRecruitPileHeight,
        singleRecruitPileWidth,
        singleRecruitPileLength,
        recruitPileCount);
}

module TopRecruitPile(wallThickness, totalHeight, recruitPileCount){
    TopPile(
        wallThickness,
        totalHeight,
        singleRecruitPileHeight,
        singleRecruitPileWidth,
        singleRecruitPileLength,
        recruitPileCount);
}

function recruitPileHeight(recruitPileCount) =
    (recruitPileCount * singleRecruitPileHeight) + .5;