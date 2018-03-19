length = 66;
width = 60;


height = 24;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

fiveCoinHeight = 5;
tenCoinHeight = 4;

magnetHeight = 4.0;

oneCoinWidth = 16.4;
oneCoinLength = 19;
oneCoinHeight = 21;

fiveCoinWidth = 15.9;
fiveCoinLength = 21.4;
fiveCoinHeight = 10.7;

tenCoinWidth = 16.1;
tenCoinLength = 23.5;
tenCoinHeight = 8.6;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 15;


wallThickness = 3;

difference(){
    cube([length, width, height]);

        translate([wallThickness, wallThickness, height - oneCoinHeight])
            cube([oneCoinLength,oneCoinWidth, oneCoinHeight]);
        translate([
            0,
            wallThickness + squareLipWidthRemainder/2,
            0])
            cube([
                oneCoinLength + wallThickness - squareLipLengthRemainder,
                oneCoinWidth - squareLipWidthRemainder,
                height]);
    
        translate([wallThickness, width/2 - oneCoinWidth/2, height - oneCoinHeight])
            cube([oneCoinLength,oneCoinWidth, oneCoinHeight]);
        translate([
            0,
            width/2 - (oneCoinWidth - squareLipWidthRemainder)/2,
            0])
            cube([
                oneCoinLength + wallThickness - squareLipLengthRemainder,
                oneCoinWidth - squareLipWidthRemainder,
                height]);    
        
        translate([wallThickness, width - (wallThickness + oneCoinWidth), height - oneCoinHeight])
            cube([oneCoinLength,oneCoinWidth, oneCoinHeight]);
        translate([
            0,
            width - (wallThickness + oneCoinWidth) + squareLipWidthRemainder/2,
            0])
            cube([
                oneCoinLength + wallThickness - squareLipLengthRemainder,
                oneCoinWidth - squareLipWidthRemainder,
                height]);
    
        translate([length - (wallThickness + fiveCoinLength), wallThickness, height - fiveCoinHeight])
            cube([fiveCoinLength,fiveCoinWidth, fiveCoinHeight]);
        translate([
            length - (wallThickness + fiveCoinLength - squareLipLengthRemainder),
            wallThickness + squareLipWidthRemainder/2,
            0])
            cube([
                fiveCoinLength + wallThickness - squareLipLengthRemainder,
                fiveCoinWidth - squareLipWidthRemainder,
                height]);
        
        translate([length - (wallThickness + fiveCoinLength), width/2 - fiveCoinWidth/2, height - fiveCoinHeight])
            cube([fiveCoinLength,fiveCoinWidth, fiveCoinHeight]);
        translate([
            length - (wallThickness + fiveCoinLength - squareLipLengthRemainder),
            width/2 - (fiveCoinWidth - squareLipWidthRemainder)/2,
            0])
            cube([
                fiveCoinLength + wallThickness - squareLipLengthRemainder,
                fiveCoinWidth - squareLipWidthRemainder,
                height]);    
                
        translate([length - (wallThickness + tenCoinLength) , width - (wallThickness + tenCoinWidth), height - tenCoinHeight])
            cube([tenCoinLength,tenCoinWidth, tenCoinHeight]);
        translate([
            length - (wallThickness + tenCoinLength - squareLipLengthRemainder),
            width - (wallThickness + tenCoinWidth) + squareLipWidthRemainder/2,
            0])
            cube([
                tenCoinLength + wallThickness - squareLipLengthRemainder,
                tenCoinWidth - squareLipWidthRemainder,
                height]);
    
            
        
        
        
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

