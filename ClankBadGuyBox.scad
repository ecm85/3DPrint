length = 110;
width = 102;
height = 14;
magnetPadding = 15;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

woodenCubeSide = 8.6;
woodenCubeBoxHeight = woodenCubeSide;
woodenCubeBoxWidth = woodenCubeSide;

//22.5 x 17.5 x 2.1

singleTileWidth = 17.5 + .5;
singleTileLength =  22.5 + .5;
singleTileHeight = 2.1 + .5;

wallThickness = 2;

fingerNotchSize = 11;
woodenCubeCount = 5;
otherWoodenCubeCount = 4;
woodenCubeBoxLength = woodenCubeSide * woodenCubeCount + .5;
otherWoodenCubeBoxLength = woodenCubeSide * otherWoodenCubeCount + .5;


meepleBoxHeight = 10.01 + .5;
meepleBoxWidth = 39.48 + .5;
meepleBoxLength = 24.79 + .5;


//      30 cubes, 7.85-8.1 (use woodenCubeSide) cubed
//		2 cubes, 10 cubed
//		1 player token
//			orange
//				17.25 width, 18.8 tall, 10.0 thick
//			blue
//				19.7 width, 18.7 tall, 9.95 thick
//			purple
//				17.4 width, 19.5 tall, 10.0 tall
//			white
//				17.7 width, 19.05 tall, 9.8 thick
//          boss  24.79 width, 39.48 tall, 10.01 thick
 
//    rotate([0,0,90])
   
        
        

    difference(){
        cube([length, width, height]);  
        translate([wallThickness, wallThickness, 0])
            WoodenCubeBoxes();
        translate([length - (wallThickness + woodenCubeBoxLength), wallThickness, 0])
            WoodenCubeBoxes();
        
        //magnet
        translate([
            length/2,
            width/2,
            height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
        translate([length - wallThickness, width - (wallThickness + meepleBoxLength), 0])
            rotate([0,0,90])
            MeepleBox();
        
        translate([wallThickness,width - (wallThickness + singleTileWidth), height - singleTileHeight])
            cube([singleTileLength, singleTileWidth, singleTileHeight]);
        
        translate([wallThickness + 2,width - (2 * singleTileWidth/5), 0])
            cube([singleTileLength - 4, 2 * singleTileWidth / 5, height]);
//        translate([46 + 2,-10, 0])
//            cube([singleTileLength - 4, singleTileWidth, height]);

    }
    
module WoodenCubeBoxes()
{
    translate([0,0, 0])
    {
        WoodenCubeBox();
    }
    translate([0,fingerNotchSize + woodenCubeSide, 0])
    {
        WoodenCubeBox();
    }
    translate([0,fingerNotchSize * 2 + woodenCubeSide * 2, 0])
    {
        OtherWoodenCubeBox();
    }
}

module WoodenCubeBox()
{
    translate([0, 0, height - (woodenCubeBoxHeight/2)])
        cube([woodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + woodenCubeBoxWidth, height - (woodenCubeBoxHeight/2)])
        cube([woodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
}

module OtherWoodenCubeBox()
{
    translate([0, 0, height - (woodenCubeBoxHeight/2)])
        cube([otherWoodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - woodenCubeBoxHeight])
        cube([otherWoodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + woodenCubeBoxWidth, height - (woodenCubeBoxHeight/2)])
        cube([otherWoodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
}

module MeepleBox()
{
    translate([0, 0, height - (meepleBoxHeight/2)])
        cube([meepleBoxLength, fingerNotchSize, meepleBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - meepleBoxHeight])
        cube([meepleBoxLength, meepleBoxWidth, meepleBoxHeight]);
    translate([0, 0 + fingerNotchSize + meepleBoxWidth, height - (meepleBoxHeight/2)])
        cube([meepleBoxLength, fingerNotchSize, meepleBoxHeight / 2]);
}