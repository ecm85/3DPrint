length = 88;
width = 92;
height = 11;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//	5 bed tokens 2.19 thick 7.87 wi 25.35 long 
//	prestige token 2 15.18 diameter 2.19 thick 
//	money tokens 2 2.05 thick 16.7 diameter

//    beds 10 piles
//	each pile 4 tokens
//	2.05 thick total 8.1 thick  18.9wid length 31.79    

bedTokenWidth = 31.79 + .5;
bedTokenLength = 18.9 + .5;
bedTokenHeight = 8.1 + .5;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 4;

difference(){
    cube([length, width, height]);


//----------------------------------
LeftBedToken();
translate([bedTokenLength + wallThickness, 0, 0])
    LeftBedToken();
translate([2 * (bedTokenLength + wallThickness), 0, 0])
    LeftBedToken();
translate([3 * (bedTokenLength + wallThickness), 0, 0])
    LeftBedToken();
   
            
//---------------------------------------------------------------------

    RightBedToken();
translate([bedTokenLength + wallThickness, 0, 0])
    RightBedToken();
translate([2 * (bedTokenLength + wallThickness), 0, 0])
    RightBedToken();
translate([3 * (bedTokenLength + wallThickness), 0, 0])
    RightBedToken();        
// -----------------------------
            
translate(
        [
            wallThickness,
            width/2 - (bedTokenLength/2),
            height - bedTokenHeight
        ])
        cube([bedTokenWidth,bedTokenLength, bedTokenHeight]);
    translate([
        0,
        width/2 - (bedTokenLength/2 - squareLipWidthRemainder/2),
        0])
        cube([
            bedTokenWidth - squareLipLengthRemainder,
            bedTokenLength - squareLipWidthRemainder,
            height]);
   
   


//------------------------------


    translate(
        [
            length - (wallThickness + bedTokenWidth),
            width/2 - (bedTokenLength/2),
            height - bedTokenHeight
        ])
        cube([bedTokenWidth,bedTokenLength, bedTokenHeight]);
    translate([
        length - (bedTokenWidth - squareLipLengthRemainder),
        width/2 - (bedTokenLength/2 - squareLipWidthRemainder/2),
        0])
        cube([
            bedTokenWidth - squareLipLengthRemainder,
            bedTokenLength - squareLipWidthRemainder,
            height]);
   
   

//----------------------------------------
   
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}


module LeftBedToken()
{
    translate(
        [
            wallThickness,
            wallThickness,
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        wallThickness + squareLipWidthRemainder/2,
        0,
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
}

module RightBedToken()
{
    translate(
        [
            wallThickness,
            width - (wallThickness + bedTokenWidth),
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        wallThickness + squareLipWidthRemainder/2,
        width - (bedTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
}
