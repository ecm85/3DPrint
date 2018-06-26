length = 105;
width = 115;
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
translate(
        [
            1 * length/5 - (bedTokenLength/2),
            wallThickness,
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        1 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        0,
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);


    translate(
        [
            2 * length/5 - (bedTokenLength/2),
            wallThickness,
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        2 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        0,
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);

    translate(
        [
            3 * length/5 - (bedTokenLength/2),
            wallThickness,
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        3 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        0,
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            4 * length/5 - (bedTokenLength/2),
            wallThickness,
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        4 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        0,
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
            
//---------------------------------------------------------------------

    translate(
        [
            length/5 - (bedTokenLength/2),
            width - (bedTokenWidth + wallThickness),
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        width - (bedTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            2 * length/5 - (bedTokenLength/2),
            width - (bedTokenWidth + wallThickness),
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        2 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        width - (bedTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            3 * length/5 - (bedTokenLength/2),
            width - (bedTokenWidth + wallThickness),
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        3 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        width - (bedTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            4 * length/5 - (bedTokenLength/2),
            width - (bedTokenWidth + wallThickness),
            height - bedTokenHeight
        ])
        cube([bedTokenLength,bedTokenWidth, bedTokenHeight]);
    translate([
        4 * length/5 - (bedTokenLength - squareLipWidthRemainder)/2,
        width - (bedTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            bedTokenLength - squareLipWidthRemainder,
            bedTokenWidth - squareLipLengthRemainder,
            height]);
            
// -----------------------------
            
translate(
        [
            wallThickness,
            3 * width/5 - (bedTokenLength/2),
            height - bedTokenHeight
        ])
        cube([bedTokenWidth,bedTokenLength, bedTokenHeight]);
    translate([
        0,
        3 * width/5 - (bedTokenLength/2 - squareLipWidthRemainder/2),
        0])
        cube([
            bedTokenWidth - squareLipLengthRemainder,
            bedTokenLength - squareLipWidthRemainder,
            height]);
   
    translate(
        [
            wallThickness,
            2 * width/5 - (bedTokenLength/2),
            height - bedTokenHeight
        ])
        cube([bedTokenWidth,bedTokenLength, bedTokenHeight]);
    translate([
        0,
        2 * width/5 - (bedTokenLength/2 - squareLipWidthRemainder/2),
        0])
        cube([
            bedTokenWidth - squareLipLengthRemainder,
            bedTokenLength - squareLipWidthRemainder,
            height]);


//------------------------------


    translate(
        [
            length - (wallThickness + bedTokenWidth),
            3 * width/5 - (bedTokenLength/2),
            height - bedTokenHeight
        ])
        cube([bedTokenWidth,bedTokenLength, bedTokenHeight]);
    translate([
        length - (bedTokenWidth - squareLipLengthRemainder),
        3 * width/5 - (bedTokenLength/2 - squareLipWidthRemainder/2),
        0])
        cube([
            bedTokenWidth - squareLipLengthRemainder,
            bedTokenLength - squareLipWidthRemainder,
            height]);
   
    translate(
        [
            length - (wallThickness + bedTokenWidth),
            2 * width/5 - (bedTokenLength/2),
            height - bedTokenHeight
        ])
        cube([bedTokenWidth,bedTokenLength, bedTokenHeight]);
    translate([
        length - (bedTokenWidth - squareLipLengthRemainder),
        2 * width/5 - (bedTokenLength/2 - squareLipWidthRemainder/2),
        0])
        cube([
            bedTokenWidth - squareLipLengthRemainder,
            bedTokenLength - squareLipWidthRemainder,
            height]);

//----------------------------------------
   
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

