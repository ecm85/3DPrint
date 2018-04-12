length = 65;
width = 108;
height = 7;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

billboardSmallTokenWidth = 18.05 + .75;
billboardSmallTokenLength = 18.00 + .75;
billboardSmallTokenHeight = 1.75 + .75;

billboardLargeTokenWidth = 35.8 + .75;
billboardLargeTokenLength = 36.00 + .75;
billboardLargeTokenHeight = 1.75 + .75;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

spaceBetweenSquares = 3;


wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, wallThickness, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        0,
       wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([wallThickness, wallThickness + billboardSmallTokenWidth + spaceBetweenSquares, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        0,
       wallThickness + billboardSmallTokenWidth + spaceBetweenSquares + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);
            
    translate([wallThickness, wallThickness + billboardSmallTokenWidth * 2 + spaceBetweenSquares * 2, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        0,
       wallThickness + billboardSmallTokenWidth * 2 + spaceBetweenSquares * 2 + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);
    
    
    translate([wallThickness, wallThickness + billboardSmallTokenWidth * 3 + spaceBetweenSquares * 3, height - billboardLargeTokenHeight])
        cube([billboardLargeTokenLength,billboardLargeTokenWidth, billboardLargeTokenHeight]);
    translate([
        0,
        wallThickness + billboardSmallTokenWidth * 3 + spaceBetweenSquares * 3 + squareLipWidthRemainder/2,
        0])
        cube([
            billboardLargeTokenLength + wallThickness - squareLipLengthRemainder,
            billboardLargeTokenWidth - squareLipWidthRemainder,
            height]);
            
            
            
            
            
            
    translate([length - (wallThickness + billboardLargeTokenLength), wallThickness, height - billboardLargeTokenHeight])
        cube([billboardLargeTokenLength,billboardLargeTokenWidth, billboardLargeTokenHeight]);
    translate([
        length - (wallThickness + billboardLargeTokenLength - squareLipLengthRemainder),
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            billboardLargeTokenLength + wallThickness - squareLipLengthRemainder,
            billboardLargeTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardSmallTokenLength) , wallThickness + billboardLargeTokenWidth + spaceBetweenSquares, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        length - (wallThickness + billboardSmallTokenLength - squareLipLengthRemainder),
        wallThickness + billboardLargeTokenLength + spaceBetweenSquares + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);
            
     translate([length - (wallThickness + billboardSmallTokenLength) , wallThickness + billboardLargeTokenLength + billboardSmallTokenWidth + spaceBetweenSquares * 2, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        length - (wallThickness + billboardSmallTokenLength - squareLipLengthRemainder),
        wallThickness + billboardLargeTokenLength + billboardSmallTokenWidth + spaceBetweenSquares * 2 + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardSmallTokenLength) , wallThickness + billboardLargeTokenLength + billboardSmallTokenWidth * 2 + spaceBetweenSquares * 3, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        length - (wallThickness + billboardSmallTokenLength - squareLipLengthRemainder),
        wallThickness + billboardLargeTokenLength + billboardSmallTokenWidth * 2 + spaceBetweenSquares * 3 + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);

        
   
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

