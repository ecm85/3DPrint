length = 61.5;
width = 115;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//inox shaman x 6, 47.35 x 30.94, base 26.84
//vermling shaman (2 stacks of 5), 30.51 x 22.44, base 20.9
//single token 2.0
magnetOffset = 49.37;
largeTokenWidth = 47.35 + 1;
largeTokenLength = 30.94 + 1;
largeTokenHeight = 8 + .5;
largeTokenSquareLipWidthRemainder = largeTokenLength - 15;
largeTokenSquareLipLengthRemainder = 4;

smallToken1Width = 30.51 + 1;
smallToken1Length = 22.44 + 1;
smallToken1Height = 10 + .5;
smallToken1SquareLipWidthRemainder = smallToken1Length - 12;
smallToken1SquareLipLengthRemainder = 4;

smallToken2Width = 30.51 + 1;
smallToken2Length = 22.44 + 1;
smallToken2Height = 10 + .5;
smallToken2SquareLipWidthRemainder = smallToken2Length - 12;
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




