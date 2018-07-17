length = 65;
width = 115;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//lurker x 6, 					47.02 x 34.26, base 32.70
//deep terror (2 stacks of 5), 	31.83 x 23.94, base 22.49
magnetOffset = 52.5;

largeTokenWidth = 47.02 + 1;
largeTokenLength = 34.26 + 1;
largeTokenHeight = 12 + .5;
largeTokenSquareLipWidthRemainder = largeTokenLength - 15;
largeTokenSquareLipLengthRemainder = 4;

smallToken1Width = 31.83 + 1;
smallToken1Length = 23.94 + 1;
smallToken1Height = 10 + .5;
smallToken1SquareLipWidthRemainder = smallToken1Length - 12;
smallToken1SquareLipLengthRemainder = 4;

smallToken2Width = 31.83 + 1;
smallToken2Length = 23.94 + 1;
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




