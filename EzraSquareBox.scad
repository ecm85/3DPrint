length = 80;
width = 70;


height = 27;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

exhibitTokenWidth = 22.15 + .5;
exhibitTokenLength = 22.38 + .5;
exhibitTokenHeight = 23.35 + .5;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;

wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, wallThickness, height - exhibitTokenHeight])
        cube([exhibitTokenLength,exhibitTokenWidth, exhibitTokenHeight]);
    translate([
        0,
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            exhibitTokenLength + wallThickness - squareLipLengthRemainder,
            exhibitTokenWidth - squareLipWidthRemainder,
            height]);

     
    translate([wallThickness, width - (wallThickness + exhibitTokenWidth), height - exhibitTokenHeight])
        cube([exhibitTokenLength,exhibitTokenWidth, exhibitTokenHeight]);
    translate([
        0,
        width - (wallThickness + exhibitTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            exhibitTokenLength + wallThickness - squareLipLengthRemainder,
            exhibitTokenWidth - squareLipWidthRemainder,
            height]);

    translate([length - (wallThickness + exhibitTokenLength), wallThickness, height - exhibitTokenHeight])
        cube([exhibitTokenLength,exhibitTokenWidth, exhibitTokenHeight]);
    translate([
        length - (wallThickness + exhibitTokenLength - squareLipLengthRemainder),
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            exhibitTokenLength + wallThickness - squareLipLengthRemainder,
            exhibitTokenWidth - squareLipWidthRemainder,
            height]);
    
      
            
    translate([length - (wallThickness + exhibitTokenLength) , width - (wallThickness + exhibitTokenWidth), height - exhibitTokenHeight])
        cube([exhibitTokenLength,exhibitTokenWidth, exhibitTokenHeight]);
    translate([
        length - (wallThickness + exhibitTokenLength - squareLipLengthRemainder),
        width - (wallThickness + exhibitTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            exhibitTokenLength + wallThickness - squareLipLengthRemainder,
            exhibitTokenWidth - squareLipWidthRemainder,
            height]);

        
    translate([length/2 - exhibitTokenLength/2, wallThickness, height - exhibitTokenHeight])
        cube([exhibitTokenLength,exhibitTokenWidth, exhibitTokenHeight]);
    translate([
        length/2 - exhibitTokenLength/2 + 2,
        0,
        0])
        cube([
            exhibitTokenLength - squareLipWidthRemainder,
            exhibitTokenWidth - squareLipLengthRemainder,
            height]);
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

