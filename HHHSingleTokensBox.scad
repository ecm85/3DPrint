length = 75;
width = 75;
height = 6;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//	5 heartbeat tokens 2.19 thick 7.87 wi 25.35 long 
//	prestige token 2 15.18 diameter 2.19 thick 
//	money tokens 2 2.05 thick 16.7 diameter

prestigeTokenDiameter = 15.18 + .5;
prestigeTokenOffset = 4;
prestigeTokenHeight = 2.19 + .5;

moneyTokenDiameter = 16.7 + .5;
moneyTokenOffset = 4;
moneyTokenHeight = 2.05 + .5;

heartbeatTokenWidth = 25.35 + .5;
heartbeatTokenLength = 7.87 + .5;
heartbeatTokenHeight = 2.19 + .5;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;

squareLipWidthRemainder = 2;
squareLipLengthRemainder = 4;

difference(){
    cube([length, width, height]);

    translate(
        [
            spaceBetweenCircles + prestigeTokenDiameter/2,  
            prestigeTokenDiameter/2 - prestigeTokenOffset,
            height - prestigeTokenHeight
        ])
        cylinder(prestigeTokenHeight, d=prestigeTokenDiameter);
    
    translate(
        [
            spaceBetweenCircles * 2 + prestigeTokenDiameter * 3/2,  
            prestigeTokenDiameter/2 - prestigeTokenOffset,
            height - prestigeTokenHeight
        ])
        cylinder(prestigeTokenHeight, d=prestigeTokenDiameter);

    translate(
        [
            length - (moneyTokenDiameter * 3/2 + spaceBetweenCircles * 2),
            moneyTokenDiameter/2 - moneyTokenOffset,
            height - moneyTokenHeight
        ])
        cylinder(moneyTokenHeight, d=moneyTokenDiameter);

    translate(
        [
            length - (moneyTokenDiameter/2 + spaceBetweenCircles),
            moneyTokenDiameter/2 - moneyTokenOffset,
            height - moneyTokenHeight
        ])
        cylinder(moneyTokenHeight, d=moneyTokenDiameter);
    
    
    
    
//    translate(
//        [
//            spaceBetweenCircles + chiefTokenDiameter/2,
//            width - (chiefTokenDiameter/2 - chiefTokenOffset),
//            height - chiefTokenHeight
//        ])
//        cube([]);  //chiefTokenHeight, d=chiefTokenDiameter);


    translate(
        [
            length/6 - (heartbeatTokenLength/2),
            width - (heartbeatTokenWidth + wallThickness),
            height - heartbeatTokenHeight
        ])
        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
    translate([
        length/6 - (heartbeatTokenLength - squareLipWidthRemainder)/2,
        width - (heartbeatTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            heartbeatTokenLength - squareLipWidthRemainder,
            heartbeatTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            2 * length/6 - (heartbeatTokenLength/2),
            width - (heartbeatTokenWidth + wallThickness),
            height - heartbeatTokenHeight
        ])
        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
    translate([
        2 * length/6 - (heartbeatTokenLength - squareLipWidthRemainder)/2,
        width - (heartbeatTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            heartbeatTokenLength - squareLipWidthRemainder,
            heartbeatTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            3 * length/6 - (heartbeatTokenLength/2),
            width - (heartbeatTokenWidth + wallThickness),
            height - heartbeatTokenHeight
        ])
        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
    translate([
        3 * length/6 - (heartbeatTokenLength - squareLipWidthRemainder)/2,
        width - (heartbeatTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            heartbeatTokenLength - squareLipWidthRemainder,
            heartbeatTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            4 * length/6 - (heartbeatTokenLength/2),
            width - (heartbeatTokenWidth + wallThickness),
            height - heartbeatTokenHeight
        ])
        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
    translate([
        4 * length/6 - (heartbeatTokenLength - squareLipWidthRemainder)/2,
        width - (heartbeatTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            heartbeatTokenLength - squareLipWidthRemainder,
            heartbeatTokenWidth - squareLipLengthRemainder,
            height]);
   
   translate(
        [
            5 * length/6 - (heartbeatTokenLength/2),
            width - (heartbeatTokenWidth + wallThickness),
            height - heartbeatTokenHeight
        ])
        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
    translate([
        5 * length/6 - (heartbeatTokenLength - squareLipWidthRemainder)/2,
        width - (heartbeatTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            heartbeatTokenLength - squareLipWidthRemainder,
            heartbeatTokenWidth - squareLipLengthRemainder,
            height]);
   
//    translate(
//        [
//            wallThickness,
//            width - (heartbeatTokenWidth + wallThickness),
//            height - heartbeatTokenHeight
//        ])
//        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
//    translate([
//        wallThickness + squareLipWidthRemainder/2,
//        width - (heartbeatTokenWidth - squareLipLengthRemainder),
//        0])
//        cube([
//            heartbeatTokenLength - squareLipWidthRemainder,
//            heartbeatTokenWidth - squareLipLengthRemainder,
//            height]);
//            
//
//    translate(
//        [
//            length - (wallThickness + heartbeatTokenLength),
//            width - (heartbeatTokenWidth + wallThickness),
//            height - heartbeatTokenHeight
//        ])
//        cube([heartbeatTokenLength,heartbeatTokenWidth, heartbeatTokenHeight]);
//    translate([
//        length - (wallThickness + heartbeatTokenLength - squareLipWidthRemainder/2),
//        width - (heartbeatTokenWidth - squareLipLengthRemainder),
//        0])
//        cube([
//            heartbeatTokenLength - squareLipWidthRemainder,
//            heartbeatTokenWidth - squareLipLengthRemainder,
//            height]);  
   
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

