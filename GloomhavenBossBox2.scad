length = 110;
width = 110;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//        winged horror 52.02 x 39.65
//		bandit commander 45.08 x 28.41
//		the betrayer 45.22 x 33.91
//		The colorless 50.55 x 32.70

token1Width = 52.02 + 1;
token1Length = 39.65 + 1;
token1Height = 2 + .5;
token1SquareLipWidthRemainder = token1Length - 15;
token1SquareLipLengthRemainder = 4;

token3Width = 45.08 + 1;
token3Length = 28.41 + 1;
token3Height = 2 + .5;
token3SquareLipWidthRemainder = token3Length - 15;
token3SquareLipLengthRemainder = 4;

token4Width = 45.22 + 1;
token4Length = 33.91 + 1;
token4Height = 2 + .5;
token4SquareLipWidthRemainder = token4Length - 15;
token4SquareLipLengthRemainder = 4;

token6Width = 50.55 + 1;
token6Length = 32.70 + 1;
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



