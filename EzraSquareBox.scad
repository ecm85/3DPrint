length = 105;
width = 100;
height = 7;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

billboardOneByOneTokenWidth = 18.05 + .75;
billboardOneByOneTokenLength = 18.00 + .75;
billboardOneByOneTokenHeight = 1.75 + .75;

billboardTwoByOneTokenWidth = 36.15 + .75;
billboardTwoByOneTokenLength = 18.00 + .75;
billboardTwoByOneTokenHeight = 1.75 + .75;

billboardThreeByTwoTokenWidth = 53.8 + .75;
billboardThreeByTwoTokenLength = 36.00 + .75;
billboardThreeByTwoTokenHeight = 1.75 + .75;

billboardFiveByTwoTokenWidth = 89.68 + .75;
billboardFiveByTwoTokenLength = 36.00 + .75;
billboardFiveByTwoTokenHeight = 1.75 + .75;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

spaceBetweenSquares = 1.5;


wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, width/2 - (billboardFiveByTwoTokenWidth/2), height - billboardFiveByTwoTokenHeight])
        cube([billboardFiveByTwoTokenLength,billboardFiveByTwoTokenWidth, billboardFiveByTwoTokenHeight]);
    translate([
        0,
        width/2 - (billboardFiveByTwoTokenWidth/2) + squareLipWidthRemainder/2,
        0])
        cube([
            billboardFiveByTwoTokenLength + wallThickness - squareLipLengthRemainder,
            billboardFiveByTwoTokenWidth - squareLipWidthRemainder,
            height]);
            
            
            
            
            
            
    translate([length - (wallThickness + billboardThreeByTwoTokenLength), wallThickness, height - billboardThreeByTwoTokenHeight])
        cube([billboardThreeByTwoTokenLength,billboardThreeByTwoTokenWidth, billboardThreeByTwoTokenHeight]);
    translate([
        length - (wallThickness + billboardThreeByTwoTokenLength - squareLipWidthRemainder/2),
        0,
        0])
        cube([
            billboardThreeByTwoTokenLength - squareLipWidthRemainder,
            billboardThreeByTwoTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate([length - (wallThickness + billboardThreeByTwoTokenLength + spaceBetweenSquares + billboardOneByOneTokenLength), wallThickness, height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardOneByOneTokenLength + billboardThreeByTwoTokenLength + spaceBetweenSquares - squareLipWidthRemainder/2),
        0,
        0])
        cube([
            billboardOneByOneTokenLength - squareLipWidthRemainder,
            billboardOneByOneTokenWidth - squareLipLengthRemainder,
            height]);
            
    




    
    translate([length - (wallThickness + billboardTwoByOneTokenLength) , width - (wallThickness + billboardTwoByOneTokenWidth), height - billboardTwoByOneTokenHeight])
        cube([billboardTwoByOneTokenLength,billboardTwoByOneTokenWidth, billboardTwoByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardTwoByOneTokenLength - squareLipWidthRemainder/2),
        width - (billboardTwoByOneTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            billboardTwoByOneTokenLength - squareLipWidthRemainder,
            billboardTwoByOneTokenWidth - squareLipLengthRemainder,
            height]);
            
     translate([length - (wallThickness + billboardOneByOneTokenLength + billboardOneByOneTokenLength + spaceBetweenSquares) , width - (wallThickness + billboardOneByOneTokenWidth), height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardOneByOneTokenLength * 2 + spaceBetweenSquares - squareLipWidthRemainder/2),
        width - (billboardOneByOneTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            billboardOneByOneTokenLength - squareLipWidthRemainder,
            billboardOneByOneTokenWidth - squareLipLengthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardOneByOneTokenLength + billboardOneByOneTokenLength +billboardOneByOneTokenLength + spaceBetweenSquares + spaceBetweenSquares) , width - (wallThickness + billboardOneByOneTokenWidth), height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardOneByOneTokenLength * 3 + spaceBetweenSquares * 2 - squareLipWidthRemainder/2),
        width - (billboardOneByOneTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            billboardOneByOneTokenLength - squareLipWidthRemainder,
            billboardOneByOneTokenWidth - squareLipLengthRemainder,
            height]);
        
   
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

