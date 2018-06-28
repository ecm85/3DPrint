length = 110;
width = 62;
height = 15;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//fourth box
//	ward abilities
//	10 in 2 piles of five
//	2.18 thick total 10.81 thick 
//	19.48 wid 51.94 long
//
//	staff markers 11 
//	pile 5 10.78 thick
//	pile 6 12.94 thick
//	single 2.17 thick 
//  17.8 x 17.8
//
//	grave tokens
//	12 
//	two stacks of six
//	single 2.05 thick 
//	one stack 12.44 thick
//	grave rounded part diameter of 15.29
//	total length 25 even 
//	wid at base 18.9 
//	wid of body 15.29

//grave tokens
//	12 
//	two stacks of six
//	single 2.05 thick 
//	one stack 12.44 thick
//	total length 25 even 
//	3 sections:
//		1. rounded tip - diameter 15.29
//		2. body - 15.29 width, 9.15 height
//		3. base - 18.9 width, 7.8 height

roundedTipDiameter = 15.29 + .5;
roundedTipOffset = 2;

bodyWidth = 15.29 + .5;
bodyLength = 8.65 + .5;

baseWidth = 18.9 + .5;
baseLength = 8.3 + .5;

graveHeight = 12.44 + .5;


staffTokenWidth = 18.8 + .5;
staffTokenLength = 18.8 + .5;
staffTokenHeight1 = 10.78 + .5;
staffTokenHeight2 = 12.94 + .5;

wardAbilityTokenWidth = 19.48 + .5;
wardAbilityTokenLength = 51.94 + .5;
wardAbilityTokenHeight = 10.81 + .5;

spaceBetweenCircles = 2;
wallThickness = spaceBetweenCircles;

squareLipWidthRemainder = 4;
squareLipLengthRemainder = 4;

difference(){
    cube([length, width, height]);

    translate([spaceBetweenCircles, 0, 0])
        Grave();
    translate([spaceBetweenCircles * 2 + baseWidth, 0, 0])
        Grave();
    
    
    translate(
        [
            length - (wallThickness + staffTokenLength),
            wallThickness,
            height - staffTokenHeight1
        ])
        cube([staffTokenLength,staffTokenWidth, staffTokenHeight1]);
    translate([
        length - (wallThickness + staffTokenLength - squareLipWidthRemainder/2),
        0,
        0])
        cube([
            staffTokenLength - squareLipWidthRemainder,
            staffTokenWidth - squareLipLengthRemainder,
            height]);
            
    translate(
        [
            length - (wallThickness * 2 + staffTokenLength * 2),
            wallThickness,
            height - staffTokenHeight2
        ])
        cube([staffTokenLength,staffTokenWidth, staffTokenHeight2]);
    translate([
        length - (wallThickness * 2 + staffTokenLength * 2 - squareLipWidthRemainder/2),
        0,
        0])
        cube([
            staffTokenLength - squareLipWidthRemainder,
            staffTokenWidth - squareLipLengthRemainder,
            height]);       

    
    
    translate(
        [
            wallThickness,
            width - (wardAbilityTokenWidth + wallThickness),
            height - wardAbilityTokenHeight
        ])
        cube([wardAbilityTokenLength,wardAbilityTokenWidth, wardAbilityTokenHeight]);
    translate([
        wallThickness + squareLipWidthRemainder/2,
        width - (wardAbilityTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            wardAbilityTokenLength - squareLipWidthRemainder,
            wardAbilityTokenWidth - squareLipLengthRemainder,
            height]);
    


    translate(
        [
            length - (wallThickness + wardAbilityTokenLength),
            width - (wardAbilityTokenWidth + wallThickness),
            height - wardAbilityTokenHeight
        ])
        cube([wardAbilityTokenLength,wardAbilityTokenWidth, wardAbilityTokenHeight]);
    translate([
        length - (wallThickness + wardAbilityTokenLength - squareLipWidthRemainder/2),
        width - (wardAbilityTokenWidth - squareLipLengthRemainder),
        0])
        cube([
            wardAbilityTokenLength - squareLipWidthRemainder,
            wardAbilityTokenWidth - squareLipLengthRemainder,
            height]);

            
    
   

   
   
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

module Grave()
{
    padding = (baseWidth - bodyWidth) / 2;
    translate(
        [
            roundedTipDiameter/2 + padding,  
            roundedTipDiameter/2 - roundedTipOffset,
            height - graveHeight
        ])
        cylinder(graveHeight, d=roundedTipDiameter);

    
    translate(
        [   
            padding,
            roundedTipDiameter/2 - roundedTipOffset,
            height - graveHeight
        ])
        cube([bodyWidth,bodyLength,graveHeight]);
    
    translate(
        [   
            0,
            roundedTipDiameter/2 - roundedTipOffset + bodyLength,
            height - graveHeight
        ])
        cube([baseWidth,baseLength,graveHeight]); 
}


