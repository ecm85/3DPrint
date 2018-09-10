length = 110;
width = 110;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//      prime demon 59.83 x 42.17
//		captain of the guard 44.03 x 29.08
//		jekserah 43.04 x 30.13
//		dark rider 53.24 x 38.5

token1Width = 59.83 + 1;
token1Length = 42.17 + 1;
token1Height = 2 + .5;
token1SquareLipWidthRemainder = token1Length - 15;
token1SquareLipLengthRemainder = 4;

token3Width = 44.03 + 1;
token3Length = 29.08 + 1;
token3Height = 2 + .5;
token3SquareLipWidthRemainder = token3Length - 15;
token3SquareLipLengthRemainder = 4;

token4Width = 43.04 + 1;
token4Length = 30.13 + 1;
token4Height = 2 + .5;
token4SquareLipWidthRemainder = token4Length - 15;
token4SquareLipLengthRemainder = 4;

token6Width = 53.24 + 1;
token6Length = 38.5 + 1;
token6Height = 2 + .5;
token6SquareLipWidthRemainder = token6Length - 15;
token6SquareLipLengthRemainder = 4;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;



difference(){
    cube([length, width, height]);


//----------------------------------
translate(
        [
            wallThickness,
            wallThickness,
            height - token1Height
        ])
        cube([token1Length,token1Width, token1Height]);
    translate([
        wallThickness + token1SquareLipWidthRemainder/2,
        0,
        0])
        cube([
            token1Length - token1SquareLipWidthRemainder,
            token1Width - token1SquareLipLengthRemainder,
            height]);

            
translate(
        [
            length - (wallThickness + token3Length),
            wallThickness,
            height - token3Height
        ])
        cube([token3Length,token3Width, token3Height]);
    translate([
        length - (wallThickness + token3Length) + token3SquareLipWidthRemainder/2,
        0,
        0])
        cube([
            token3Length - token3SquareLipWidthRemainder,
            token3Width - token3SquareLipLengthRemainder,
            height]);

            
//---------------------------------------------------------------------
    
    translate(
        [
            wallThickness,
            width - (wallThickness + token4Width),
            height - token4Height
        ])
        cube([token4Length,token4Width, token4Height]);
    translate([
        wallThickness + token4SquareLipWidthRemainder/2,
        width - (token4Width - token4SquareLipLengthRemainder),
        0])
        cube([
            token4Length - token4SquareLipWidthRemainder,
            token4Width - token4SquareLipLengthRemainder,
            height]);
            
    

    translate(
        [
            length - (wallThickness + token6Length),
            width - (wallThickness + token6Width),
            height - token6Height
        ])
        cube([token6Length,token6Width, token6Height]);
    translate([
        length - (wallThickness + token6Length) + token6SquareLipWidthRemainder/2,
        width - (token6Width - token6SquareLipLengthRemainder),
        0])
        cube([
            token6Length - token6SquareLipWidthRemainder,
            token6Width - token6SquareLipLengthRemainder,
            height]);       

//----------------------------------------
   
    translate([length/2 - magnetBaseInnerDiameter/2, length - (wallThickness + magnetBaseInnerDiameter), 0])
        cube([magnetBaseInnerDiameter, magnetBaseInnerDiameter, height]);
        

}




