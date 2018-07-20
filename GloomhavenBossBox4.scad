length = 110;
width = 110;
height = 5;

//Based on magnet size:
magnetBaseInnerDiameter = 19;
magnetHeight = 4.0;

//        elder drake 80.82 x 72.9

token1Width = 80.82 + 1;
token1Length = 72.9 + 1;
token1Height = 4 + .5;
token1SquareLipWidthRemainder = token1Length - 25;
token1SquareLipLengthRemainder = 4;


spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;



difference(){
    cube([length, width, height]);


//----------------------------------
translate(
        [
            length/2 - token1Length/2,
            wallThickness,
            height - token1Height
        ])
        cube([token1Length,token1Width, token1Height]);
    translate([
        length/2 - (token1Length - token1SquareLipWidthRemainder)/2,
        0,
        0])
        cube([
            token1Length - token1SquareLipWidthRemainder,
            token1Width - token1SquareLipLengthRemainder,
            height]);

            
     

//----------------------------------------
   
    translate([length/2 - magnetBaseInnerDiameter/2, width - (wallThickness + magnetBaseInnerDiameter), 0])
        cube([magnetBaseInnerDiameter, magnetBaseInnerDiameter, height]);
        

}




