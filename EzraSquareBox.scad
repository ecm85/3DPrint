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

billboardTwoByOneTokenWidth = 36.15 + .75;
billboardTwoByOneTokenLength = 18.00 + .75;
billboardTwoByOneTokenHeight = 1.75 + .75;

billboardThreeByOneTokenWidth = 54.0 + .75;
billboardThreeByOneTokenLength = 18.0  + .75;
billboardThreeByOneTokenHeight = 1.75 + .75;

billboardThreeByTwoTokenWidth = 53.8 + .75;
billboardThreeByTwoTokenLength = 36.00 + .75;
billboardThreeByTwoTokenHeight = 1.75 + .75;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

spaceBetweenSquares = 1.5;


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
            
            
            
            
            
            
    translate([length - (wallThickness + billboardOneByOneTokenLength), wallThickness, height - billboardOneByOneTokenHeight])
        cube([billboardOneByOneTokenLength,billboardOneByOneTokenWidth, billboardOneByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardOneByOneTokenLength - squareLipWidthRemainder/2),
        0,
        0])
        cube([
            billboardOneByOneTokenLength - squareLipWidthRemainder,
            billboardOneByOneTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate([length - (wallThickness + billboardThreeByOneTokenLength + spaceBetweenSquares + billboardTwoByOneTokenLength) , wallThickness, height - billboardThreeByOneTokenHeight])
        cube([billboardThreeByOneTokenLength,billboardThreeByOneTokenWidth, billboardThreeByOneTokenHeight]);
    translate([
        length - (wallThickness + billboardThreeByOneTokenLength + spaceBetweenSquares + billboardTwoByOneTokenLength - squareLipWidthRemainder/2),
        0,
        0])
        cube([
            billboardThreeByOneTokenLength - squareLipWidthRemainder,
             billboardThreeByOneTokenWidth - squareLipLengthRemainder ,
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
    
    
        
   
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

