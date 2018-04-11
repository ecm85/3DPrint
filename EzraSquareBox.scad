length = 98;
width = 65;
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
    
    
    translate([wallThickness, width - (wallThickness + billboardLargeTokenWidth), height - billboardLargeTokenHeight])
        cube([billboardLargeTokenLength,billboardLargeTokenWidth, billboardLargeTokenHeight]);
    translate([
        0,
        width - (wallThickness + billboardLargeTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            billboardLargeTokenLength + wallThickness - squareLipLengthRemainder,
            billboardLargeTokenWidth - squareLipWidthRemainder,
            height]);
            
            
     translate([length/2 - (spaceBetweenSquares + billboardSmallTokenLength), wallThickness, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenWidth, billboardSmallTokenLength, billboardSmallTokenHeight]);
    translate([
        length/2 - (spaceBetweenSquares + billboardSmallTokenLength) + squareLipWidthRemainder/2,
        0,
        0])
        cube([
            billboardSmallTokenWidth - squareLipWidthRemainder,
            billboardSmallTokenWidth - squareLipLengthRemainder,
            height]);       
            
            
    translate([length/2 + (spaceBetweenSquares), wallThickness, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenWidth, billboardSmallTokenLength, billboardSmallTokenHeight]);
    translate([
        length/2 + (spaceBetweenSquares) + squareLipWidthRemainder/2,
        0,
        0])
        cube([
            billboardSmallTokenWidth - squareLipWidthRemainder,
            billboardSmallTokenWidth - squareLipLengthRemainder,
            height]);   
            

    translate([length - (wallThickness + billboardSmallTokenLength), wallThickness, height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        length - (wallThickness + billboardSmallTokenLength - squareLipLengthRemainder),
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);
    
    translate([length - (wallThickness + billboardSmallTokenLength) , width - (wallThickness + billboardSmallTokenWidth), height - billboardSmallTokenHeight])
        cube([billboardSmallTokenLength,billboardSmallTokenWidth, billboardSmallTokenHeight]);
    translate([
        length - (wallThickness + billboardSmallTokenLength - squareLipLengthRemainder),
        width - (wallThickness + billboardSmallTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            billboardSmallTokenLength + wallThickness - squareLipLengthRemainder,
            billboardSmallTokenWidth - squareLipWidthRemainder,
            height]);

        
   
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

