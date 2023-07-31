include<SquarePileLib.scad>

length = 195;

magnetHoleWidth = 19;
wallThickness = 3;
singlePileHeight = 1.97;
maxTokenHeight = 62;
maxTokenCount = 10;
width = wallThickness + maxTokenHeight + wallThickness + magnetHoleWidth + maxTokenHeight + wallThickness;
height = wallThickness + (maxTokenCount * singlePileHeight);
echo ("width = ", width);
echo ("length = ", length);
/*
Algox 1	49.08	60.31	4
Algox 2	31.37	41.13	6
Algox 3	38.21	51.5	6
Algox 4	38.6	59.89	4
Algox 5	43.64	57.91	6
Algox 6	45.47	61.34	6
Undead 1	39.83	57.79	6
Undead 2	25.83	38.68	10
Undead 3	26.35	42.13	6
*/
token1Width = 49.08 + 1;
token1Height = 60.31 + 1;
token1Count = 4;
token2Width = 43.64 + 1;
token2Height = 57.91 + 1;
token2Count = 6;
token3Width = 38.21 + 1;
token3Height = 51.5 + 1;
token3Count = 6;
token4Width = 38.6 + 1;
token4Height = 59.89 + 1;
token4Count = 4;
token5Width = 31.37 + 1;
token5Height = 41.13 + 1;
token5Count = 6;
token6Width = 45.47 + 1;
token6Height = 61.34 + 1;
token6Count = 6;
token7Width = 39.83 + 1;
token7Height = 57.79 + 1;
token7Count = 6;
token8Width = 25.83 + 1;
token8Height = 38.68 + 1;
token8Count = 10;
token9Width = 26.35 + 1;
token9Height = 42.13 + 1;
token9Count = 6;

difference() {

    $fn=50;
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
    translate([0, 0, 0])
        BottomPile(
            wallThickness,
            height,
            singlePileHeight,
            token1Width,
            token1Height,
            token1Count
        );
    translate([token1Width + wallThickness, 0, 0])
        BottomPile(
            wallThickness,
            height,
            singlePileHeight,
            token2Width,
            token2Height,
            token2Count
        );
    translate([token1Width + token2Width + wallThickness * 2, 0, 0])
        BottomPile(
            wallThickness,
            height,
            singlePileHeight,
            token3Width,
            token3Height,
            token3Count
        );
    translate([token1Width + token2Width + token3Width + wallThickness * 3, 0, 0])
        BottomPile(
            wallThickness,
            height,
            singlePileHeight,
            token4Width,
            token4Height,
            token4Count
        );
    
    translate([0, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token5Width,
            token5Height,
            token5Count
        );
    translate([token5Width + wallThickness, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token6Width,
            token6Height,
            token6Count
        );
    translate([token5Width + token6Width + wallThickness * 2, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token7Width,
            token7Height,
            token7Count
        );
    translate([token5Width + token6Width + token7Width + wallThickness * 3, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token8Width,
            token8Height,
            token8Count
        );
    translate([token5Width + token6Width + token7Width + token8Width + wallThickness * 4, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token9Width,
            token9Height,
            token9Count
        );

    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}