include<SquarePileLib.scad>

length = 195;

magnetHoleWidth = 19;
wallThickness = 3;
singlePileHeight = 1.97;
maxTokenHeight = 62;
maxTokenCount = 10;
width = wallThickness + maxTokenHeight + wallThickness + magnetHoleWidth + maxTokenHeight + wallThickness;
height = wallThickness + (maxTokenCount * singlePileHeight);

token1Width = 31.31 + 1;
token1Height = 46.37 + 1;
token1Count = 6;
token2Width = 38.29 + 1;
token2Height = 57.8 + 1;
token2Count = 4;
token3Width = 42.86 + 1;
token3Height = 59.67 + 1;
token3Count = 6;
token4Width = 27.99 + 1;
token4Height = 38.03 + 1;
token4Count = 10;
token5Width = 29.25 + 1;
token5Height = 46.29 + 1;
token5Count = 6;
token6Width = 26.87 + 1;
token6Height = 43.46 + 1;
token6Count = 4;
token7Width = 29.34 + 1;
token7Height = 36.97 + 1;
token7Count = 10;
token8Width = 28.89 + 1;
token8Height = 39.4 + 1;
token8Count = 6;
token9Width = 23.92 + 1;
token9Height = 32.29 + 1;
token9Count = 6;
token10Width = 25.12 + 1;
token10Height = 35.85 + 1;
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