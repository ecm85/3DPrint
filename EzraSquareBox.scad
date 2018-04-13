length = 100;
width = 90;
height = 7;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

billboardOneByOneTokenWidth = 18.05 + .75;
billboardOneByOneTokenLength = 18.00 + .75;
billboardOneByOneTokenHeight = 1.75 + .75;

billboardTwoByOneTokenWidth = 18.00 + .75;
billboardTwoByOneTokenLength = 36.15 + .75;
billboardTwoByOneTokenHeight = 1.75 + .75;

billboardThreeByOneTokenWidth = 18.0 + .75;
billboardThreeByOneTokenLength = 54.0 + .75;
billboardThreeByOneTokenHeight = 1.75 + .75;

billboardThreeByTwoTokenWidth = 53.8 + .75;
billboardThreeByTwoTokenLength = 36.00 + .75;
billboardThreeByTwoTokenHeight = 1.75 + .75;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

spaceBetweenSquares = 3;


wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, wallThickness, height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        0,
       wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            billboardOneByOneTokenLength + wallThickness - squareLipLengthRemainder,
            billboardOneByOneTokenWidth - squareLipWidthRemainder,
            height]);
    
     
    translate([wallThickness, width - (billboardThreeByTwoTokenWidth + wallThickness), height - billboardThreeByTwoTokenHeight])
        cube([billboardThreeByTwoTokenLength,billboardThreeByTwoTokenWidth, billboardThreeByTwoTokenHeight]);
    translate([
        0,
        width - (billboardThreeByTwoTokenWidth + wallThickness) + squareLipWidthRemainder/2,
        0])
        cube([
            billboardThreeByTwoTokenLength + wallThickness - squareLipLengthRemainder,
            billboardThreeByTwoTokenWidth - squareLipWidthRemainder,
            height]);
            
            
            
            
            
            
    translate([length - (wallThickness + billboardTwoByOneTokenLength), wallThickness, height - billboardTwoByOneTokenHeight])
        cube([billboardTwoByOneTokenLength,billboardTwoByOneTokenWidth, billboardTwoByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardTwoByOneTokenLength - squareLipLengthRemainder),
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            billboardTwoByOneTokenLength + wallThickness - squareLipLengthRemainder,
            billboardTwoByOneTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardOneByOneTokenLength) , wallThickness + billboardTwoByOneTokenWidth + spaceBetweenSquares, height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardOneByOneTokenLength - squareLipLengthRemainder),
        wallThickness + billboardTwoByOneTokenWidth + spaceBetweenSquares + squareLipWidthRemainder/2,
        0])
        cube([
            billboardOneByOneTokenLength + wallThickness - squareLipLengthRemainder,
            billboardOneByOneTokenWidth - squareLipWidthRemainder,
            height]);
            
     translate([length - (wallThickness + billboardOneByOneTokenLength) , wallThickness + billboardTwoByOneTokenWidth + billboardOneByOneTokenWidth + spaceBetweenSquares * 2, height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardOneByOneTokenLength - squareLipLengthRemainder),
        wallThickness + billboardTwoByOneTokenWidth + billboardOneByOneTokenWidth + spaceBetweenSquares * 2 + squareLipWidthRemainder/2,
        0])
        cube([
            billboardOneByOneTokenLength + wallThickness - squareLipLengthRemainder,
            billboardOneByOneTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardThreeByOneTokenLength) , wallThickness + billboardTwoByOneTokenWidth + billboardOneByOneTokenWidth * 2 + spaceBetweenSquares * 3, height - billboardThreeByOneTokenHeight])
        cube([billboardThreeByOneTokenLength,billboardThreeByOneTokenWidth, billboardThreeByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardThreeByOneTokenLength - squareLipLengthRemainder),
        wallThickness + billboardTwoByOneTokenWidth + billboardOneByOneTokenWidth * 2 + spaceBetweenSquares * 3 + squareLipWidthRemainder/2,
        0])
        cube([
            billboardThreeByOneTokenLength + wallThickness - squareLipLengthRemainder,
            billboardThreeByOneTokenWidth - squareLipWidthRemainder,
            height]);

        
   
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

