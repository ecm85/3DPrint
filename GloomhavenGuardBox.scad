length = 61.5;
width = 115;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//inox guard x 6, 47.87 x 31.97, base 29.36
//bandit guard x 6, 36.67 x 27.75, base 24.43
//city guard x 6, 38.45 x 24.02, base 21.30
//single token 2.0
magnetOffset = 49.37;
largeTokenWidth = 47.87 + 1;
largeTokenLength = 31.97 + 1;
largeTokenHeight = 12 + .5;
largeTokenSquareLipWidthRemainder = largeTokenLength - 15;
largeTokenSquareLipLengthRemainder = 4;

smallToken1Width = 36.67 + 1;
smallToken1Length = 27.75 + 1;
smallToken1Height = 12 + .5;
smallToken1SquareLipWidthRemainder = smallToken1Length - 15;
smallToken1SquareLipLengthRemainder = 4;

smallToken2Width = 38.45 + 1;
smallToken2Length = 24.02 + 1;
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




