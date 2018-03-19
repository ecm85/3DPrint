length = 80;
width = 65;
height = 30;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.2;

coinDiameter = 21;
coinOffset = 3;
coinHeight = 26.2;

conflictTokenDiameter = 23.5;
conflictTokenOffset = 4;
conflictTokenHeight = 5;

reagentTokenDiameter = 24.2;
reagentTokenOffset = 4;
reagentTokenHeight = 18;
reagentTokenTriangleSide = 8.5;
reagentTokenLongSide = 12.1;

alchemicalTokenDiameter = 18.5;
alchemicalTokenOffset = 2;
alchemicalTokenHeight = 23;
squareLipThickness = 2;
squareLipWidthRemainder = 4;
squareLipLengthRemainder = 12;

spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([coinDiameter/2 + spaceBetweenCircles, coinDiameter/2 - coinOffset, height - coinHeight])
        cylinder(coinHeight, d=coinDiameter);

    translate([length /2, coinDiameter/2 - coinOffset, height - coinHeight])
        cylinder(coinHeight, d=coinDiameter);
    
    translate([length - (coinDiameter/2 + spaceBetweenCircles), coinDiameter/2 - coinOffset, height - coinHeight])
        cylinder(coinHeight, d=coinDiameter);
    
    
    
    
    translate([conflictTokenDiameter/2 + spaceBetweenCircles, width - (conflictTokenDiameter/2 - conflictTokenOffset), height - conflictTokenHeight])
        cylinder(conflictTokenHeight, d=conflictTokenDiameter, $fn=6);

    translate([length /2, width - (conflictTokenDiameter/2 - conflictTokenOffset), height - conflictTokenHeight])
        cylinder(conflictTokenHeight, d=conflictTokenDiameter, $fn=6);
    
    translate([length - (conflictTokenDiameter/2 + spaceBetweenCircles), width - (conflictTokenDiameter/2 - conflictTokenOffset), height - conflictTokenHeight])
        cylinder(conflictTokenHeight, d=conflictTokenDiameter, $fn=6);
    
    


    translate([reagentTokenDiameter/2 - reagentTokenOffset, width/2, height - reagentTokenHeight])
        cylinder(reagentTokenHeight, d=reagentTokenDiameter);
    translate([reagentTokenDiameter - 5.5, width/2 - reagentTokenLongSide/2, height - reagentTokenHeight])
        rotate([0,0,45])
            cube([reagentTokenTriangleSide, reagentTokenTriangleSide,reagentTokenHeight]);

    translate([
        length - (alchemicalTokenDiameter + squareLipThickness),
        width/2 - alchemicalTokenDiameter/2,
        height - alchemicalTokenHeight])
        cube([alchemicalTokenDiameter, alchemicalTokenDiameter, alchemicalTokenHeight]);
    translate([
        length - (alchemicalTokenDiameter + squareLipThickness - squareLipLengthRemainder),
        width/2 - (alchemicalTokenDiameter - squareLipWidthRemainder)/2,
        0])
        cube([
            alchemicalTokenDiameter + squareLipThickness - squareLipLengthRemainder,
            alchemicalTokenDiameter - squareLipWidthRemainder,
            height]);
            
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}


