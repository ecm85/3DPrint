length = 61.5;
width = 115;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//inox archer x 6, 49.37 x 36.16, base 24.49
//bandit archer x 6, 37.31 x 24.54, base fullish
//city archer x 6, 36.84 x 24.22, base 22.97
//single token 2.0
magnetOffset = 49.37;
largeTokenWidth = 49.37 + .5;
largeTokenLength = 36.16 + .5;
largeTokenHeight = 12 + .5;
largeTokenSquareLipWidthRemainder = largeTokenLength - 15;
largeTokenSquareLipLengthRemainder = 4;

smallToken1Width = 37.31 + 1;
smallToken1Length = 24.54 + 1;
smallToken1Height = 12 + .5;
smallToken1SquareLipWidthRemainder = smallToken1Length - 15;
smallToken1SquareLipLengthRemainder = 4;

smallToken2Width = 36.84 + 1;
smallToken2Length = 24.22 + 1;
smallToken2Height = 12 + .5;
smallToken2SquareLipWidthRemainder = smallToken2Length - 15;
smallToken2SquareLipLengthRemainder = 4;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;



difference(){
    cube([length, width, height]);


//----------------------------------
translate(
        [
            length/2 - largeTokenLength/2,
            wallThickness,
            height - largeTokenHeight
        ])
        cube([largeTokenLength,largeTokenWidth, largeTokenHeight]);
    translate([
        length/2 - (largeTokenLength - largeTokenSquareLipWidthRemainder)/2,
        0,
        0])
        cube([
            largeTokenLength - largeTokenSquareLipWidthRemainder,
            largeTokenWidth - largeTokenSquareLipLengthRemainder,
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




