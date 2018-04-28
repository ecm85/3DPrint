length = 65;
width = 71;

height = 20;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

numberedTileLength = 20.12 + .5;
numberedTileWidth = 20.12 + .5;
numberedTileHeight = 8.36 + .3;

wallTileLength = 10.8 + .5;
wallTileWidth = 48.1 + .5;
wallTileHeight = 14.67 + .3;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

startPlayerDiameter = 29.90 + .5;
startPlayerHeight = 2.08 + .5;
startPlayerOffset = 3;

wallThickness = 3;

fingerNotchSize = 11;


cylinderDiameter = 14.23 + .4;
cylinderBoxLength = 25.20 + .5;

difference(){
    cube([length, width, height]);

    translate([wallThickness, wallThickness + startPlayerDiameter - startPlayerOffset, height - numberedTileHeight])
        cube([numberedTileLength,numberedTileWidth, numberedTileHeight]);
    translate([
        0,
        wallThickness + squareLipWidthRemainder/2 + startPlayerDiameter - startPlayerOffset,
        0])
        cube([
            numberedTileLength + wallThickness - squareLipLengthRemainder,
            numberedTileWidth - squareLipWidthRemainder,
            height]);

     


    translate([length - (wallThickness + wallTileLength), width/2 - (wallTileWidth/2), height - wallTileHeight])
        cube([wallTileLength,wallTileWidth, wallTileHeight]);
    translate([
        length - (wallThickness + wallTileLength - squareLipWidthRemainder),
        width/2 - (wallTileWidth/2) + squareLipLengthRemainder/2,
        0])
        cube([
            wallTileLength + wallThickness - squareLipWidthRemainder,
            wallTileWidth - squareLipLengthRemainder,
            height]);
    
      
            
    translate([wallThickness + startPlayerDiameter/2, startPlayerDiameter/2 - startPlayerOffset, height - startPlayerHeight])
        cylinder(startPlayerHeight, d=startPlayerDiameter);
        

    translate([
        wallThickness,
        width - (cylinderDiameter + wallThickness),
        height - (cylinderDiameter/2)])
        cube([cylinderBoxLength + fingerNotchSize, cylinderDiameter, cylinderDiameter/2]);
    translate([
        wallThickness,
        width - (wallThickness + cylinderDiameter/2),
        height - (cylinderDiameter/2)])
        rotate([0, 90, 0])
            cylinder(cylinderBoxLength, d=cylinderDiameter);

    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}
