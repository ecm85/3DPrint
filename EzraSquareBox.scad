length = 75;
width = 85;


height = 12;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

marketTokenWidth = 20.9;
marketTokenLength = 20.9;
marketTokenHeight = 4.6;

escapePodTokenWidth = 24.2;
escapePodTokenLength = 21.1;
escapePodTokenHeight = 8.74;

commandCodeTokenWidth = 30.7;
commandCodeTokenLength = 22.9;
commandCodeTokenHeight = 8.75;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;


wallThickness = 3;

difference(){
    cube([length, width, height]);

    translate([wallThickness, wallThickness, height - marketTokenHeight])
        cube([marketTokenLength,marketTokenWidth, marketTokenHeight]);
    translate([
        0,
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            marketTokenLength + wallThickness - squareLipLengthRemainder,
            marketTokenWidth - squareLipWidthRemainder,
            height]);

     
    translate([wallThickness, width - (wallThickness + marketTokenWidth), height - marketTokenHeight])
        cube([marketTokenLength,marketTokenWidth, marketTokenHeight]);
    translate([
        0,
        width - (wallThickness + marketTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            marketTokenLength + wallThickness - squareLipLengthRemainder,
            marketTokenWidth - squareLipWidthRemainder,
            height]);

    translate([length - (wallThickness + marketTokenLength), wallThickness, height - marketTokenHeight])
        cube([marketTokenLength,marketTokenWidth, marketTokenHeight]);
    translate([
        length - (wallThickness + marketTokenLength - squareLipLengthRemainder),
        wallThickness + squareLipWidthRemainder/2,
        0])
        cube([
            marketTokenLength + wallThickness - squareLipLengthRemainder,
            marketTokenWidth - squareLipWidthRemainder,
            height]);
    
      
            
    translate([length - (wallThickness + marketTokenLength) , width - (wallThickness + marketTokenWidth), height - marketTokenHeight])
        cube([marketTokenLength,marketTokenWidth, marketTokenHeight]);
    translate([
        length - (wallThickness + marketTokenLength - squareLipLengthRemainder),
        width - (wallThickness + marketTokenWidth) + squareLipWidthRemainder/2,
        0])
        cube([
            marketTokenLength + wallThickness - squareLipLengthRemainder,
            marketTokenWidth - squareLipWidthRemainder,
            height]);

        
    translate([length/2 - escapePodTokenLength/2, wallThickness, height - escapePodTokenHeight])
        cube([escapePodTokenLength,escapePodTokenWidth, escapePodTokenHeight]);
    translate([
        length/2 - escapePodTokenLength/2 + 2,
        0,
        0])
        cube([
            escapePodTokenLength - squareLipWidthRemainder,
            escapePodTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate([length/2 - commandCodeTokenLength/2, width - (wallThickness + commandCodeTokenWidth), height - commandCodeTokenHeight])
        cube([commandCodeTokenLength,commandCodeTokenWidth, commandCodeTokenHeight]);    
    translate([
        length/2 - commandCodeTokenLength/2 + 2,
        width + squareLipLengthRemainder - commandCodeTokenWidth,
        0])
        cube([
            commandCodeTokenLength - squareLipWidthRemainder,
            commandCodeTokenWidth - squareLipLengthRemainder,
            height]);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

