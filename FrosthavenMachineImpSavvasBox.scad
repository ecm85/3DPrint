include<SquarePileLib.scad>

length = 195;

magnetHoleWidth = 19;
wallThickness = 3;
singlePileHeight = 1.97;
maxTokenHeight = 62;
maxTokenCount = 10;
width = wallThickness + maxTokenHeight + wallThickness + magnetHoleWidth + maxTokenHeight + wallThickness;
height = wallThickness + (maxTokenCount * singlePileHeight);

token1Width = 36.67 + 1;
token1Height = 46.51 + 1;
token1Count = 6;
token2Width = 41.49 + 1;
token2Height = 57.17 + 1;
token2Count = 6;
token3Width = 35.75 + 1;
token3Height = 46.72 + 1;
token3Count = 10;
token4Width = 25.62 + 1;
token4Height = 32.56 + 1;
token4Count = 10;
token5Width = 29.05 + 1;
token5Height = 39.34 + 1;
token5Count = 10;
token6Width = 28.17 + 1;
token6Height = 34.38 + 1;
token6Count = 6;
token7Width = 46.14 + 1;
token7Height = 53.49 + 1;
token7Count = 6;
token8Width = 29.63 + 1;
token8Height = 36.8 + 1;
token8Count = 10;
token9Width = 29.82 + 1;
token9Height = 46.06 + 1;
token9Count = 4;
token10Width = 27.53 + 1;
token10Height = 45.53 + 1;
token10Count = 4;


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