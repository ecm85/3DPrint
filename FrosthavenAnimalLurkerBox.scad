include<SquarePileLib.scad>

length = 195;

magnetHoleWidth = 19;
wallThickness = 3;
singlePileHeight = 1.97;
maxTokenHeight = 62;
maxTokenCount = 10;
width = wallThickness + maxTokenHeight + wallThickness + magnetHoleWidth + maxTokenHeight + wallThickness;
height = wallThickness + (maxTokenCount * singlePileHeight);
/*
Lurker 1	36.53	46.26	6
Lurker 2	48.46	58.54	4
Lurker 3	37.34	52.24	6
Lurker 4	33.85	46.77	6
Animal 1	44.67	48.57	4
Animal 2	32.47	35.29	10
Animal 3	24.35	31.5	6
Animal 4	23.94	35.58	6
Animal 5	26.17	29.93	6
Animal 6	34.9	39.51	10
*/
token1Width = 36.53 + 1;
token1Height = 46.26 + 1;
token1Count = 6;
token2Width = 48.46 + 1;
token2Height = 58.54 + 1;
token2Count = 4;
token3Width = 34.9 + 1;
token3Height = 39.51 + 1;
token3Count = 10;
token4Width = 24.35 + 1;
token4Height = 31.5 + 1;
token4Count = 6;
token5Width = 26.17 + 1;
token5Height = 29.93 + 1;
token5Count = 6;

token6Width = 37.34 + 1;
token6Height = 52.24 + 1;
token6Count = 6;
token7Width = 33.85 + 1;
token7Height = 46.77 + 1;
token7Count = 6;
token8Width = 44.67 + 1;
token8Height = 48.57 + 1;
token8Count = 4;
token9Width = 23.94 + 1;
token9Height = 35.58 + 1;
token9Count = 6;
token10Width = 32.47 + 1;
token10Height = 35.29 + 1;
token10Count = 10;


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
    translate([token1Width + token2Width + token3Width + token4Width + wallThickness * 4, 0, 0])
        BottomPile(
            wallThickness,
            height,
            singlePileHeight,
            token5Width,
            token5Height,
            token5Count
        );
    
    translate([0, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token6Width,
            token6Height,
            token6Count
        );
    translate([token6Width + wallThickness, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token7Width,
            token7Height,
            token7Count
        );
    translate([token6Width + token7Width + wallThickness * 2, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token8Width,
            token8Height,
            token8Count
        );
    translate([token6Width + token7Width + token8Width + wallThickness * 3, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token9Width,
            token9Height,
            token9Count
        );
    translate([token6Width + token7Width + token8Width + token9Width + wallThickness * 4, width, 0])
        TopPile(
            wallThickness,
            height,
            singlePileHeight,
            token10Width,
            token10Height,
            token10Count
        );

    
    translate([length/2 - magnetHoleWidth/2, width/2 - magnetHoleWidth/2, 0])
        cube([magnetHoleWidth, magnetHoleWidth, height]);
}