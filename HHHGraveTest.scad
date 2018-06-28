length = 18.9 + .5 + 4;
width = 25;
height = 7;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

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
bodyLength = 9.15 + .5;

baseWidth = 18.9 + .5;
baseLength = 7.8 + .5;

//graveHeight = 12.44 + .5;
graveHeight = 3 + .5;

spaceBetweenCircles = 2;

padding = (baseWidth - bodyWidth) / 2;

difference(){
    cube([length, width, height]);

    translate(
        [
            spaceBetweenCircles + roundedTipDiameter/2 + padding,  
            roundedTipDiameter/2 - roundedTipOffset,
            height - graveHeight
        ])
        cylinder(graveHeight, d=roundedTipDiameter);

    
    translate(
        [   
            spaceBetweenCircles + padding,
            roundedTipDiameter/2 - roundedTipOffset,
            height - graveHeight
        ])
        cube([bodyWidth,bodyLength,graveHeight]);
    
    translate(
        [   
            spaceBetweenCircles,
            roundedTipDiameter/2 - roundedTipOffset + bodyLength,
            height - graveHeight
        ])
        cube([baseWidth,baseLength,graveHeight]);   
   

        

}

