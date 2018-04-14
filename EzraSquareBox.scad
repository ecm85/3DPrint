length = 100;
width = 60;
height = 18;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

billboardTwoByOneTokenWidth = 36.15 + .75;
billboardTwoByOneTokenLength = 18.00 + .75;
billboardTwoByOneTokenHeight = 14 + .75;

billboardThreeByTwoTokenWidth = 53.8 + .75;
billboardThreeByTwoTokenLength = 36.00 + .75;
billboardThreeByTwoTokenHeight = 14 + .75;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

spaceBetweenSquares = 1.5;


wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, width/2 - (billboardThreeByTwoTokenWidth/2), height - billboardThreeByTwoTokenHeight])
        cube([billboardThreeByTwoTokenLength,billboardThreeByTwoTokenWidth, billboardThreeByTwoTokenHeight]);
    translate([
        0,
        width/2 - (billboardThreeByTwoTokenWidth/2) + squareLipWidthRemainder/2,
        0])
        cube([
            billboardThreeByTwoTokenLength + wallThickness - squareLipLengthRemainder,
            billboardThreeByTwoTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardTwoByOneTokenLength), width/2 - (billboardTwoByOneTokenWidth/2), height - billboardTwoByOneTokenHeight])
        cube([billboardTwoByOneTokenLength,billboardTwoByOneTokenWidth, billboardTwoByOneTokenHeight]);
    translate([
        length - (billboardTwoByOneTokenLength + wallThickness - squareLipLengthRemainder),
        width/2 - (billboardTwoByOneTokenWidth/2) + squareLipWidthRemainder/2,
        0])
        cube([
            billboardTwoByOneTokenLength + wallThickness - squareLipLengthRemainder,
            billboardTwoByOneTokenWidth - squareLipWidthRemainder,
            height]);
            
              
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

