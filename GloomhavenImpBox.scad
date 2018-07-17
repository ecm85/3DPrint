length = 63;
width = 105;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//black imp (2 stacks of 5) 29.76 x 23.92, full (ish) base
//forest imp (2 stacks of 5) 28.25 x 22.28, base 17.44

//single token 2.0
magnetOffset = 43.01;

largeToken1Width = 29.76 + 1;
largeToken1Length = 23.92 + 1;
largeToken1Height = 10 + .5;
largeToken1SquareLipWidthRemainder = largeToken1Length - 12;
largeToken1SquareLipLengthRemainder = 4;

largeToken2Width = 29.76 + 1;
largeToken2Length = 23.92 + 1;
largeToken2Height = 10 + .5;
largeToken2SquareLipWidthRemainder = largeToken2Length - 12;
largeToken2SquareLipLengthRemainder = 4;

smallToken1Width = 28.25 + 1;
smallToken1Length = 22.28 + 1;
smallToken1Height = 10 + .5;
smallToken1SquareLipWidthRemainder = smallToken1Length - 10;
smallToken1SquareLipLengthRemainder = 4;

smallToken2Width = 28.25 + 1;
smallToken2Length = 22.28 + 1;
smallToken2Height = 10 + .5;
smallToken2SquareLipWidthRemainder = smallToken2Length - 10;
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




