length = 110;
width = 110;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//living spirit x 6, 35.87 x 23.9, 22.87 base
//cultist x 6, 35.69 x 20.64x full (ish) base

//living bones (2 stacks of 5) 36.44 x 23.46, base 19.15
//living corpse x 6, 35.73 x 24.06, full (ish) base

token1Width = 35.87 + 1;
token1Length = 23.9 + 1;
token1Height = 12 + .5;
token1SquareLipWidthRemainder = token1Length - 15;
token1SquareLipLengthRemainder = 4;

token3Width = 35.69 + 1;
token3Length = 20.64 + 1;
token3Height = 12 + .5;
token3SquareLipWidthRemainder = token3Length - 15;
token3SquareLipLengthRemainder = 4;

token4Width = 36.44 + 1;
token4Length = 23.46 + 1;
token4Height = 10 + .5;
token4SquareLipWidthRemainder = token4Length - 15;
token4SquareLipLengthRemainder = 4;

token5Width = 36.44 + 1;
token5Length = 23.46 + 1;
token5Height = 10 + .5;
token5SquareLipWidthRemainder = token5Length - 15;
token5SquareLipLengthRemainder = 4;

token6Width = 35.73 + 1;
token6Length = 24.06 + 1;
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
            wallThickness + 15,
            wallThickness,
            height - token1Height
        ])
        cube([token1Length,token1Width, token1Height]);
    translate([
        wallThickness + token1SquareLipWidthRemainder/2 + 15,
        0,
        0])
        cube([
            token1Length - token1SquareLipWidthRemainder,
            token1Width - token1SquareLipLengthRemainder,
            height]);

            
translate(
        [
            length - (wallThickness + token3Length + 15),
            wallThickness,
            height - token3Height
        ])
        cube([token3Length,token3Width, token3Height]);
    translate([
        length - (wallThickness + token3Length + 15) + token3SquareLipWidthRemainder/2,
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




