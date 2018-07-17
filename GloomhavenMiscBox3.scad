length = 65;
width = 115;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//harrower x4, 					41.04 x 25.4, base 18.7
//artillery x 6, 					34.49 x 28.27, base full ish
//slime (2 stacks of 5) 			35.21 x 27.84, full (ish) base

//single token 2.0
magnetOffset = 52.5;

largeToken1Width = 41.04 + 1;
largeToken1Length = 25.4 + 1;
largeToken1Height = 8 + .5;
largeToken1SquareLipWidthRemainder = largeToken1Length - 10;
largeToken1SquareLipLengthRemainder = 4;

largeToken2Width = 34.49 + 1;
largeToken2Length = 28.27 + 1;
largeToken2Height = 12 + .5;
largeToken2SquareLipWidthRemainder = largeToken2Length - 15;
largeToken2SquareLipLengthRemainder = 4;

smallToken1Width = 35.21 + 1;
smallToken1Length = 27.84 + 1;
smallToken1Height = 10 + .5;
smallToken1SquareLipWidthRemainder = smallToken1Length - 15;
smallToken1SquareLipLengthRemainder = 4;

smallToken2Width = 35.21 + 1;
smallToken2Length = 27.84 + 1;
smallToken2Height = 10 + .5;
smallToken2SquareLipWidthRemainder = smallToken2Length - 15;
smallToken2SquareLipLengthRemainder = 4;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;



difference(){
    cube([length, width, height]);


//----------------------------------
translate(
        [
            wallThickness,
            wallThickness,
            height - largeToken1Height
        ])
        cube([largeToken1Length,largeToken1Width, largeToken1Height]);
    translate([
        wallThickness + largeToken1SquareLipWidthRemainder/2,
        0,
        0])
        cube([
            largeToken1Length - largeToken1SquareLipWidthRemainder,
            largeToken1Width - largeToken1SquareLipLengthRemainder,
            height]);
    
translate(
        [
            length - (wallThickness + largeToken2Length),
            wallThickness,
            height - largeToken2Height
        ])
        cube([largeToken2Length,largeToken2Width, largeToken2Height]);
    translate([
        length - (wallThickness + (largeToken2Length - largeToken2SquareLipWidthRemainder) + largeToken2SquareLipWidthRemainder/2),
        0,
        0])
        cube([
            largeToken2Length - largeToken2SquareLipWidthRemainder,
            largeToken2Width - largeToken2SquareLipLengthRemainder,
            height]);

            
//---------------------------------------------------------------------
    
    translate(
        [
            wallThickness,
            width - (wallThickness + smallToken1Width),
            height - smallToken1Height
        ])
        cube([smallToken1Length,smallToken1Width, smallToken1Height]);
    translate([
        wallThickness + smallToken1SquareLipWidthRemainder/2,
        width - (smallToken1Width - smallToken1SquareLipLengthRemainder),
        0])
        cube([
            smallToken1Length - smallToken1SquareLipWidthRemainder,
            smallToken1Width - smallToken1SquareLipLengthRemainder,
            height]);

    translate(
        [
            length - (wallThickness + smallToken2Length),
            width - (wallThickness + smallToken2Width),
            height - smallToken2Height
        ])
        cube([smallToken2Length,smallToken2Width, smallToken2Height]);
    translate([
        length - (wallThickness + smallToken2Length) + smallToken2SquareLipWidthRemainder/2,
        width - (smallToken2Width - smallToken2SquareLipLengthRemainder),
        0])
        cube([
            smallToken2Length - smallToken2SquareLipWidthRemainder,
            smallToken2Width - smallToken2SquareLipLengthRemainder,
            height]);       

//----------------------------------------
   
    translate([length/2 - magnetBaseInnerDiameter/2, magnetOffset + wallThickness * 2, 0])
        cube([magnetBaseInnerDiameter, magnetBaseInnerDiameter, height]);
        

}




