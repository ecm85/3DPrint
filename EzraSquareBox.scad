length = 61;
width = 65;
height = 7;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

radioTokenWidth = 18.05 + .5;
radioTokenLength = 18.00 + .5;
radioTokenHeight = 1.75 + .5;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, wallThickness, height - radioTokenHeight])
        cube([radioTokenLength,radioTokenWidth, radioTokenHeight]);
    translate([
        0,
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            radioTokenLength + wallThickness - squareLipLengthRemainder,
            radioTokenWidth - squareLipWidthRemainder,
            height]);
    
    
    translate([wallThickness, width/2 - radioTokenWidth/2, height - radioTokenHeight])
        cube([radioTokenLength,radioTokenWidth, radioTokenHeight]);
    translate([
        0,
        width/2 - radioTokenWidth/2 + squareLipWidthRemainder/2,
        0])
        cube([
            radioTokenLength + wallThickness - squareLipLengthRemainder,
            radioTokenWidth - squareLipWidthRemainder,
            height]);
     
    translate([wallThickness, width - (wallThickness + radioTokenWidth), height - radioTokenHeight])
        cube([radioTokenLength,radioTokenWidth, radioTokenHeight]);
    translate([
        0,
        width - (wallThickness + radioTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            radioTokenLength + wallThickness - squareLipLengthRemainder,
            radioTokenWidth - squareLipWidthRemainder,
            height]);
            
            
            
            
            

    translate([length - (wallThickness + radioTokenLength), wallThickness, height - radioTokenHeight])
        cube([radioTokenLength,radioTokenWidth, radioTokenHeight]);
    translate([
        length - (wallThickness + radioTokenLength - squareLipLengthRemainder),
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            radioTokenLength + wallThickness - squareLipLengthRemainder,
            radioTokenWidth - squareLipWidthRemainder,
            height]);
    
translate([length - (wallThickness + radioTokenLength) , width/2 - radioTokenWidth/2, height - radioTokenHeight])
        cube([radioTokenLength,radioTokenWidth, radioTokenHeight]);
    translate([
        length - (wallThickness + radioTokenLength - squareLipLengthRemainder),
        width/2 - radioTokenWidth/2 + squareLipWidthRemainder/2,
        0])
        cube([
            radioTokenLength + wallThickness - squareLipLengthRemainder,
            radioTokenWidth - squareLipWidthRemainder,
            height]);
      
            
    translate([length - (wallThickness + radioTokenLength) , width - (wallThickness + radioTokenWidth), height - radioTokenHeight])
        cube([radioTokenLength,radioTokenWidth, radioTokenHeight]);
    translate([
        length - (wallThickness + radioTokenLength - squareLipLengthRemainder),
        width - (wallThickness + radioTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            radioTokenLength + wallThickness - squareLipLengthRemainder,
            radioTokenWidth - squareLipWidthRemainder,
            height]);

        
   
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

