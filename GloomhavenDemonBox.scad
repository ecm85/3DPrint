length = 110;
width = 110;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//            earth demon x 6, 50.66 x 36.78, base 30.52
//			flame demon x 6, 40.08 x 28.11x base 22.29
//			night demon x 6, 39.16 x 28.63x base 27
//			
//			wind demon x 6, 39.79 x 28.91, full (ish) base
//			frost demon x 6, 39.11 x 26.84, base 21.59
//			sun demon x 6, 39.09 x 28.26, base26.57

token1Width = 50.66 + 1;
token1Length = 36.78 + 1;
token1Height = 12 + .5;
token1SquareLipWidthRemainder = token1Length - 15;
token1SquareLipLengthRemainder = 4;

token2Width = 40.08 + 1;
token2Length = 28.11 + 1;
token2Height = 12 + .5;
token2SquareLipWidthRemainder = token2Length - 15;
token2SquareLipLengthRemainder = 4;

token3Width = 39.16 + 1;
token3Length = 28.63 + 1;
token3Height = 12 + .5;
token3SquareLipWidthRemainder = token3Length - 15;
token3SquareLipLengthRemainder = 4;

token4Width = 39.79 + 1;
token4Length = 28.91 + 1;
token4Height = 12 + .5;
token4SquareLipWidthRemainder = token4Length - 15;
token4SquareLipLengthRemainder = 4;

token5Width = 39.11 + 1;
token5Length = 26.84 + 1;
token5Height = 12 + .5;
token5SquareLipWidthRemainder = token5Length - 15;
token5SquareLipLengthRemainder = 4;

token6Width = 39.09 + 1;
token6Length = 28.26 + 1;
token6Height = 12 + .5;
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
            wallThickness * 2 + token1Length + 3,
            wallThickness,
            height - token2Height
        ])
        cube([token2Length,token2Width, token2Height]);
    translate([
        wallThickness * 2 + token1Length + token2SquareLipWidthRemainder/2  + 3,
        0,
        0])
        cube([
            token2Length - token2SquareLipWidthRemainder,
            token2Width - token2SquareLipLengthRemainder,
            height]);
            
translate(
        [
            length - (wallThickness + token6Length),
            wallThickness,
            height - token6Height
        ])
        cube([token6Length,token6Width, token6Height]);
    translate([
        length - (wallThickness + token6Length) + token6SquareLipWidthRemainder/2,
        0,
        0])
        cube([
            token6Length - token6SquareLipWidthRemainder,
            token6Width - token6SquareLipLengthRemainder,
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
            length/2 - token5Length/2,
            width - (wallThickness + token5Width),
            height - token5Height
        ])
        cube([token5Length,token5Width, token5Height]);
    translate([
        length/2 - (token5Length - token5SquareLipWidthRemainder)/2,
        width - (token5Width - token5SquareLipLengthRemainder),
        0])
        cube([
            token5Length - token5SquareLipWidthRemainder,
            token5Width - token5SquareLipLengthRemainder,
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
   
    translate([length/2 - magnetBaseInnerDiameter/2, width/2 - magnetBaseInnerDiameter/2, 0])
        cube([magnetBaseInnerDiameter, magnetBaseInnerDiameter, height]);
        

}




